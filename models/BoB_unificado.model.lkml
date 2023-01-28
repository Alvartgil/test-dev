connection: "snowflake_barcelo"

include: "/views/*/*.view.lkml"                # include all views in the views/ folder in this project

explore: bob_base {
  from: dim_portfolio
  always_filter: {filters: [dim_tiempo_forecast.fecha_forecast_actual : "Current"] }
  join: dim_tiempo_mes {
    type:  cross
    relationship:  one_to_many
    sql_on: 1 = 1 ;;
  }
  join: dim_tiempo_forecast {
    type:  cross
    relationship:  one_to_many
    sql_on: 1 = 1 ;;
  }
  join: aux_dates_pbi {
    type:  left_outer
    relationship:  many_to_one
    sql_on: ${bob_base.id_hotel} = ${aux_dates_pbi.id_hotel} AND
    ${aux_dates_pbi.fecha_forecast_seleccionada} = ${dim_tiempo_forecast.fecha_forecast};;
  }
  join: fct_metricas_agrupadas {
    type:  left_outer
    relationship:  many_to_one
    sql_on: ${fct_metricas_agrupadas.id_base} = ${aux_dates_pbi.id_base} AND
    ${fct_metricas_agrupadas.anio_mes} = ${dim_tiempo_mes.anio_mes};;
  }
}


explore: bob_comparado {
  from: dim_portfolio
  always_filter: {filters: [dim_tiempo_forecast.fecha_forecast_actual : "Current"] }
  join: dim_tiempo_mes {
    type:  cross
    relationship:  one_to_many
    sql_on: 1 = 1 ;;
  }
  join: dim_tiempo_forecast {
    type:  cross
    relationship:  one_to_many
    sql_on: 1 = 1 ;;
  }
  join: aux_dates_pbi_comparado {
    type:  left_outer
    relationship:  many_to_one
    sql_on: ${aux_dates_pbi_comparado.id_hotel} = ${bob_comparado.id_hotel} AND
      ${dim_tiempo_mes.anio} = ${aux_dates_pbi_comparado.anio_comparado} AND
      ${aux_dates_pbi_comparado.fecha_forecast_seleccionada} = ${dim_tiempo_forecast.fecha_forecast};;
  }

  join: fct_metricas_agrupadas {
    type:  left_outer
    relationship:  many_to_one
    sql_on: ${fct_metricas_agrupadas.id_comparado} = ${aux_dates_pbi_comparado.id_comparado} AND
       ${fct_metricas_agrupadas.mes} = ${dim_tiempo_mes.mes} AND
      ${fct_metricas_agrupadas.anio} = ${aux_dates_pbi_comparado.anio_comparado};;
  }

  join: dim_anio_comparado {
    type:  left_outer
    relationship:  many_to_one
    sql_on: ${aux_dates_pbi_comparado.anio_comparado} = ${dim_anio_comparado.anio} ;;
  }

}



  explore: bob_unificado {
    from: vista_bob_base
    join: comparado {
      from: vista_bob_comparado
      type:  left_outer
      relationship:  many_to_one
      sql_on: ${bob_unificado.id_hotel} = ${comparado.id_hotel}
      AND ${bob_unificado.mes} = ${comparado.mes} ;;
    }
    join: dim_estructura_geografica {
      type:  left_outer
      relationship:  many_to_one
      sql_on: ${bob_unificado.id_hotel} = ${dim_estructura_geografica.id_hotel} ;;
    }
  }
