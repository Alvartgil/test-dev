view: fct_produccion_ocupacion_mes {
  sql_table_name: "CORE"."FCT_PRODUCCION_OCUPACION_MES"
    ;;

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: id_hotel {
    type: number
    sql: ${TABLE}."ID_HOTEL" ;;
  }

  dimension: num_estancias {
    type: number
    sql: ${TABLE}."NUM_ESTANCIAS" ;;
  }

  dimension: num_habitaciones {
    type: number
    sql: ${TABLE}."NUM_HABITACIONES" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
