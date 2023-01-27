connection: "snowflake_barcelo"

include: "/views/*/*.view.lkml"                # include all views in the views/ folder in this project

explore: dim_tiempo_mes {
  join: fct_metricas_agrupadas {
  type:  full_outer
  relationship:  many_to_one
  sql_on: ${fct_metricas_agrupadas.anio_mes} = ${dim_tiempo_mes.anio_mes} ;;

}
}
