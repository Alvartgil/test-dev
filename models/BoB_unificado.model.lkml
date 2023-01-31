  connection: "snowflake_barcelo"

include: "/views/*/*.view.lkml"                # include all views in the views/ folder in this project

explore: bob_base {
  view_name: fct_metricas_agrupadas
  join: dim_portfolio {
    type:  inner
    relationship:  many_to_one
    sql_on: ${fct_metricas_agrupadas.id_hotel} = ${dim_portfolio.id_hotel} ;;
  }

  join: aux_dates_pbi {
    type:  inner
    relationship:  many_to_one
    sql_on: ${fct_metricas_agrupadas.id_base} = ${aux_dates_pbi.id_base} ;;
  }

  join: dim_tiempo_forecast {
    type:  inner
    relationship:  many_to_one
    sql_on: ${aux_dates_pbi.fecha_forecast_seleccionada} = ${dim_tiempo_forecast.fecha_forecast} ;;
  }

  join: dim_tiempo_mes {
    type:  inner
    relationship:  many_to_one
    sql_on: ${fct_metricas_agrupadas.anio_mes} = ${dim_tiempo_mes.anio_mes} ;;
  }

}

explore: bob_comparado {
  view_name:  fct_metricas_agrupadas
  join: dim_portfolio {
    type:  inner
    relationship:  many_to_one
    sql_on: ${fct_metricas_agrupadas.id_hotel} = ${dim_portfolio.id_hotel} ;;
  }

  join: aux_dates_pbi_comparado {
    type:  inner
    relationship:  many_to_one
    sql_on: ${fct_metricas_agrupadas.id_comparado} = ${aux_dates_pbi_comparado.id_comparado} ;;
  }

  join: dim_tiempo_forecast {
    type:  inner
    relationship:  many_to_one
    sql_on: ${aux_dates_pbi_comparado.fecha_forecast_seleccionada} = ${dim_tiempo_forecast.fecha_forecast} ;;
  }

  join: dim_anio_comparado {
    type:  inner
    relationship:  many_to_one
    sql_on: ${aux_dates_pbi_comparado.anio_comparado} = ${dim_anio_comparado.anio} AND
      ${dim_anio_comparado.anio} = ${fct_metricas_agrupadas.anio};;
  }

  join: dim_tiempo_mes {
    type:  inner
    relationship:  many_to_one
    sql_on: ${fct_metricas_agrupadas.mes} = ${dim_tiempo_mes.mes} AND
      ${dim_tiempo_mes.anio} = ${dim_anio_comparado.anio};;
  }

}

##explore: bob {
##  from: vista_bob_base
##  join: comparado {
##    from: vista_bob_comparado
##    type: left_outer
##    relationship: many_to_one
##    sql_on: ${bob.id_hotel} = ${comparado.id_hotel} AND
##      ${bob.mes} = ${comparado.mes} AND
##      {% condition bob.filtro_anio_actual %} ${bob.anio_actual} {% endcondition %} AND
##      {% condition bob.filtro_mes_actual %} ${bob.mes_actual} {% endcondition %} AND
##      {% condition comparado.filtro_anio_comparado %} ${comparado.anio_actual} {% endcondition %};;
##  }
##  join: estructura_geografica {
##    from: dim_estructura_geografica
##    type: left_outer
##    relationship: many_to_one
##    sql_on: ${bob.id_hotel} = ${estructura_geografica.id_hotel};;
##  }

explore: unificado {
  sql_always_where: ${bob.visibilidad} = 'true';;
  from: dim_estructura_geografica
  join: bob{
    from: vista_bob_base
    type: left_outer
    relationship: one_to_many
    sql_on: ${bob.id_hotel} = ${unificado.id_hotel} AND
        {% condition bob.filtro_anio_actual %} ${bob.anio_actual} {% endcondition %} AND
        {% condition bob.filtro_mes_actual %} ${bob.mes_actual} {% endcondition %};;
  }
  join: comparado {
    from: vista_bob_comparado
    type: left_outer
    relationship: many_to_one
    sql_on: ${bob.id_hotel} = ${comparado.id_hotel} AND
      ${bob.mes} = ${comparado.mes} AND
      {% condition comparado.filtro_anio_comparado %} ${comparado.anio_actual} {% endcondition %};;
  }

}
