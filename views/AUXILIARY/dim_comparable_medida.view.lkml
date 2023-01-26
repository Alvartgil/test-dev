view: dim_comparable_medida {
  sql_table_name: "AUXILIARY"."DIM_COMPARABLE_MEDIDA"
    ;;

  dimension: selection {
    type: string
    sql: ${TABLE}."SELECTION" ;;
  }

  dimension: selection_order {
    type: number
    sql: ${TABLE}."SELECTION_ORDER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
