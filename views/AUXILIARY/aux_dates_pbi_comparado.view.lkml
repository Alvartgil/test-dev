view: aux_dates_pbi_comparado {
  sql_table_name: "AUXILIARY"."AUX_DATES_PBI_COMPARADO"
    ;;

  dimension: anio_comparado {
    type: number
    sql: ${TABLE}."ANIO_COMPARADO" ;;
  }

  dimension: fecha_forecast_calculada {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FECHA_FORECAST_CALCULADA" ;;
  }

  dimension: fecha_forecast_comparada {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FECHA_FORECAST_COMPARADA" ;;
  }

  dimension_group: fecha_forecast_comparada_w {
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
    sql: ${TABLE}."FECHA_FORECAST_COMPARADA_W" ;;
  }

  dimension: fecha_forecast_seleccionada {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FECHA_FORECAST_SELECCIONADA" ;;
  }

  dimension: id_comparado {
    type: string
    sql: ${TABLE}."ID_COMPARADO" ;;
  }

  dimension: id_comparado_w {
    type: string
    sql: ${TABLE}."ID_COMPARADO_W" ;;
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
