view: fct_ocupacion_mes {
  sql_table_name: "CORE"."FCT_OCUPACION_MES"
    ;;

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: escenario {
    type: string
    sql: ${TABLE}."ESCENARIO" ;;
  }

  dimension_group: f_activacion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."F_ACTIVACION" ;;
  }

  dimension_group: f_borrado {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."F_BORRADO" ;;
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
