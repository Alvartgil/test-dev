view: dim_tiempo_forecast {
  sql_table_name: "CORE"."DIM_TIEMPO_FORECAST"
    ;;

  dimension: anio {
    type: number
    sql: ${TABLE}."ANIO" ;;
  }

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: anio_semana_dia {
    type: string
    sql: ${TABLE}."ANIO_SEMANA_DIA" ;;
  }

  dimension: fecha_forecast {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FECHA_FORECAST" ;;
  }

  dimension: fecha_forecast_actual {
    type: string
    sql: ${TABLE}."FECHA_FORECAST_ACTUAL" ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}."MES" ;;
  }

  dimension_group: pickup_1_week {
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
    sql: ${TABLE}."PICKUP_1_WEEK" ;;
  }

  dimension_group: pickup_2_week {
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
    sql: ${TABLE}."PICKUP_2_WEEK" ;;
  }

  dimension_group: pickup_3_week {
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
    sql: ${TABLE}."PICKUP_3_WEEK" ;;
  }

  dimension_group: pickup_4_week {
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
    sql: ${TABLE}."PICKUP_4_WEEK" ;;
  }

  dimension_group: pickup_5_week {
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
    sql: ${TABLE}."PICKUP_5_WEEK" ;;
  }

  dimension_group: pickup_d {
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
    sql: ${TABLE}."PICKUP_D" ;;
  }

  dimension_group: pickup_w {
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
    sql: ${TABLE}."PICKUP_W" ;;
  }

  dimension: semana_dia {
    type: string
    sql: ${TABLE}."SEMANA_DIA" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
