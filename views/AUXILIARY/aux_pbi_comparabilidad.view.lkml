view: aux_pbi_comparabilidad {
  sql_table_name: "AUXILIARY"."AUX_PBI_COMPARABILIDAD"
    ;;

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: anio_mes_comparado {
    type: number
    sql: ${TABLE}."ANIO_MES_COMPARADO" ;;
  }

  dimension: id_hotel {
    type: number
    sql: ${TABLE}."ID_HOTEL" ;;
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
