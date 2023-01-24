connection: "snowflake_barcelo"

# include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project
include: "/**/*.dashboard"

explore: Bob_Comparado {
    view_name:  fct_metricas_agrupadas
#     conditionally_filter: {
#    filters:[dim_anio_comparado.anio: "2022", dim_tiempo_mes.mes_actual: "Current", dim_tiempo_forecast.fecha_forecast_actual = "Current"]}


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
