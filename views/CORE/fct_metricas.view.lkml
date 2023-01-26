view: fct_metricas {
  sql_table_name: "CORE"."FCT_METRICAS"
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

  dimension: arr_denominador {
    type: number
    sql: ${TABLE}."ARR_DENOMINADOR" ;;
  }

  dimension: arr_numerador {
    type: number
    sql: ${TABLE}."ARR_NUMERADOR" ;;
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

  dimension: i_habpen_produccion {
    type: number
    sql: ${TABLE}."I_HABPEN_PRODUCCION" ;;
  }

  dimension: i_totales {
    type: number
    sql: ${TABLE}."I_TOTALES" ;;
  }

  dimension: id_base {
    type: string
    sql: ${TABLE}."ID_BASE" ;;
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

  dimension: is_comparable {
    type: number
    sql: ${TABLE}."IS_COMPARABLE" ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}."MES" ;;
  }

  dimension: num_habitaciones {
    type: number
    sql: ${TABLE}."NUM_HABITACIONES" ;;
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

  dimension: rr_denominador {
    type: number
    sql: ${TABLE}."RR_DENOMINADOR" ;;
  }

  dimension: rr_numerador {
    type: number
    sql: ${TABLE}."RR_NUMERADOR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
