view: dim_anio_comparado {
  sql_table_name: "CORE"."DIM_ANIO_COMPARADO"
    ;;

  dimension: anio {
    type: number
    sql: ${TABLE}."ANIO" ;;
  }

  dimension: anio_actual {
    type: string
    sql: ${TABLE}."ANIO_ACTUAL" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
