view: dim_tiempo_mes {
  sql_table_name: "CORE"."DIM_TIEMPO_MES"
    ;;

  dimension: anio {
    type: number
    sql: ${TABLE}."ANIO" ;;
  }

  dimension: anio_actual {
    type: string
    sql: ${TABLE}."ANIO_ACTUAL" ;;
  }

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: is_status {
    type: string
    sql: ${TABLE}."IS_STATUS" ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}."MES" ;;
  }

  dimension: mes_actual {
    type: string
    sql: ${TABLE}."MES_ACTUAL" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
