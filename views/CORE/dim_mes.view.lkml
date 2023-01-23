view: dim_mes {
  sql_table_name: "CORE"."DIM_MES"
    ;;

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
