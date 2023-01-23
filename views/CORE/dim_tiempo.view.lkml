view: dim_tiempo {
  sql_table_name: "CORE"."DIM_TIEMPO"
    ;;

  dimension: anio {
    type: number
    sql: ${TABLE}."ANIO" ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}."FECHA" ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}."MES" ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
