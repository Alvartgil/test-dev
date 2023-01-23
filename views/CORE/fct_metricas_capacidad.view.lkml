view: fct_metricas_capacidad {
  sql_table_name: "CORE"."FCT_METRICAS_CAPACIDAD"
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
