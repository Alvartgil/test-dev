view: fct_metricas_ingresos {
  sql_table_name: "CORE"."FCT_METRICAS_INGRESOS"
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

  dimension: i_habitacion {
    type: number
    sql: ${TABLE}."I_HABITACION" ;;
  }

  dimension: i_habpen {
    type: number
    sql: ${TABLE}."I_HABPEN" ;;
  }

  dimension: i_habpen_pickup_1_w {
    type: number
    sql: ${TABLE}."I_HABPEN_PICKUP_1_W" ;;
  }

  dimension: i_habpen_pickup_2_w {
    type: number
    sql: ${TABLE}."I_HABPEN_PICKUP_2_W" ;;
  }

  dimension: i_habpen_pickup_3_w {
    type: number
    sql: ${TABLE}."I_HABPEN_PICKUP_3_W" ;;
  }

  dimension: i_habpen_pickup_4_w {
    type: number
    sql: ${TABLE}."I_HABPEN_PICKUP_4_W" ;;
  }

  dimension: i_habpen_pickup_5_w {
    type: number
    sql: ${TABLE}."I_HABPEN_PICKUP_5_W" ;;
  }

  dimension: i_habpen_pickup_d {
    type: number
    sql: ${TABLE}."I_HABPEN_PICKUP_D" ;;
  }

  dimension: i_habpen_pickup_w {
    type: number
    sql: ${TABLE}."I_HABPEN_PICKUP_W" ;;
  }

  dimension: i_totales {
    type: number
    sql: ${TABLE}."I_TOTALES" ;;
  }

  dimension: id_hotel {
    type: number
    sql: ${TABLE}."ID_HOTEL" ;;
  }

  dimension: is_comparable {
    type: number
    sql: ${TABLE}."IS_COMPARABLE" ;;
  }

  dimension: por_i_habpen_pickup_1_w {
    type: number
    sql: ${TABLE}."POR_I_HABPEN_PICKUP_1_W" ;;
  }

  dimension: por_i_habpen_pickup_2_w {
    type: number
    sql: ${TABLE}."POR_I_HABPEN_PICKUP_2_W" ;;
  }

  dimension: por_i_habpen_pickup_3_w {
    type: number
    sql: ${TABLE}."POR_I_HABPEN_PICKUP_3_W" ;;
  }

  dimension: por_i_habpen_pickup_4_w {
    type: number
    sql: ${TABLE}."POR_I_HABPEN_PICKUP_4_W" ;;
  }

  dimension: por_i_habpen_pickup_5_w {
    type: number
    sql: ${TABLE}."POR_I_HABPEN_PICKUP_5_W" ;;
  }

  dimension: por_i_habpen_pickup_d {
    type: number
    sql: ${TABLE}."POR_I_HABPEN_PICKUP_D" ;;
  }

  dimension: por_i_habpen_pickup_w {
    type: number
    sql: ${TABLE}."POR_I_HABPEN_PICKUP_W" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
