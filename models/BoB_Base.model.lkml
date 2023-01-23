connection: "snowflake_barcelo"

# include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
 include: "/**/*.view.lkml"                 # include all views in this project


explore: Bob_Base {
  view_name: fct_metricas_agrupadas
#  conditionally_filter: {
#    filters:[
#      dim_tiempo_mes.anio_actual: "Current",
#      dim_tiempo_mes.mes_actual: "Current",
#      dim_tiempo_forecast.fecha_forecast_actual: "Current"
#      ]}
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
