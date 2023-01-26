view: dim_comparabilidad {
  sql_table_name: "CORE"."DIM_COMPARABILIDAD"
    ;;

  dimension: desc_comparable {
    type: string
    sql: ${TABLE}."DESC_COMPARABLE" ;;
  }

  dimension: is_comparable {
    type: number
    sql: ${TABLE}."IS_COMPARABLE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
