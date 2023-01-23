view: fct_produccion_capacidad_mes {
  sql_table_name: "CORE"."FCT_PRODUCCION_CAPACIDAD_MES"
    ;;

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: habitaciones_capacidad {
    type: number
    sql: ${TABLE}."HABITACIONES_CAPACIDAD" ;;
  }

  dimension: id_hotel {
    type: number
    sql: ${TABLE}."ID_HOTEL" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
