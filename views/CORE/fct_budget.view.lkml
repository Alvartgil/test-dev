view: fct_budget {
  sql_table_name: "CORE"."FCT_BUDGET"
    ;;

  dimension: adr_denominador {
    type: number
    sql: ${TABLE}."ADR_DENOMINADOR" ;;
  }

  dimension: adr_numerador {
    type: number
    sql: ${TABLE}."ADR_NUMERADOR" ;;
  }

  dimension: anio {
    type: number
    sql: ${TABLE}."ANIO" ;;
  }

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: estancias {
    type: number
    sql: ${TABLE}."ESTANCIAS" ;;
  }

  dimension: estancias_capacidad {
    type: number
    sql: ${TABLE}."ESTANCIAS_CAPACIDAD" ;;
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

  dimension: i_totales {
    type: number
    sql: ${TABLE}."I_TOTALES" ;;
  }

  dimension: id_hotel {
    type: number
    sql: ${TABLE}."ID_HOTEL" ;;
  }

  dimension: id_moneda {
    type: string
    sql: ${TABLE}."ID_MONEDA" ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}."MES" ;;
  }

  dimension: roomnights {
    type: number
    sql: ${TABLE}."ROOMNIGHTS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
