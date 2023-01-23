view: aux_dates_pbi {
  sql_table_name: "AUXILIARY"."AUX_DATES_PBI"
    ;;

  dimension: fecha_forecast_calculada {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FECHA_FORECAST_CALCULADA" ;;
  }

  dimension: fecha_forecast_seleccionada {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FECHA_FORECAST_SELECCIONADA" ;;
  }

  dimension: id_base {
    type: string
    sql: ${TABLE}."ID_BASE" ;;
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
