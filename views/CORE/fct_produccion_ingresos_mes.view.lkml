view: fct_produccion_ingresos_mes {
  sql_table_name: "CORE"."FCT_PRODUCCION_INGRESOS_MES"
    ;;

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: i_habitacion {
    type: number
    sql: ${TABLE}."I_HABITACION" ;;
  }

  dimension: i_habpen {
    type: number
    sql: ${TABLE}."I_HABPEN" ;;
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
