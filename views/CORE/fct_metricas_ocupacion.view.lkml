view: fct_metricas_ocupacion {
  sql_table_name: "CORE"."FCT_METRICAS_OCUPACION"
    ;;

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: escenario {
    type: string
    sql: ${TABLE}."ESCENARIO" ;;
  }

  dimension_group: fecha_forecast {
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
    sql: ${TABLE}."FECHA_FORECAST" ;;
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
