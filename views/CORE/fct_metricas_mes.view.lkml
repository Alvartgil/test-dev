view: fct_metricas_mes {
  sql_table_name: "CORE"."FCT_METRICAS_MES"
    ;;

  dimension: adr_denominador {
    type: number
    sql: ${TABLE}."ADR_DENOMINADOR" ;;
  }

  dimension: adr_numerador {
    type: number
    sql: ${TABLE}."ADR_NUMERADOR" ;;
  }

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: habitaciones_capacidad {
    type: number
    sql: ${TABLE}."HABITACIONES_CAPACIDAD" ;;
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
