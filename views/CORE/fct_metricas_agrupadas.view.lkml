view: fct_metricas_agrupadas {
  sql_table_name: "CORE"."FCT_METRICAS_AGRUPADAS"
    ;;

  dimension: adr_denominador {
    type: number
    sql: ${TABLE}."ADR_DENOMINADOR" ;;
  }

  dimension: adr_denominador_budget {
    type: number
    sql: ${TABLE}."ADR_DENOMINADOR_BUDGET" ;;
  }

  dimension: adr_denominador_mes {
    type: number
    sql: ${TABLE}."ADR_DENOMINADOR_MES" ;;
  }

  dimension: adr_numerador {
    type: number
    sql: ${TABLE}."ADR_NUMERADOR" ;;
  }

  dimension: adr_numerador_budget {
    type: number
    sql: ${TABLE}."ADR_NUMERADOR_BUDGET" ;;
  }

  dimension: adr_numerador_mes {
    type: number
    sql: ${TABLE}."ADR_NUMERADOR_MES" ;;
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

  dimension: estancias_capacidad_budget {
    type: number
    sql: ${TABLE}."ESTANCIAS_CAPACIDAD_BUDGET" ;;
  }

  dimension: fecha_forecast {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FECHA_FORECAST" ;;
  }

  dimension: habitaciones_capacidad {
    type: number
    sql: ${TABLE}."HABITACIONES_CAPACIDAD" ;;
  }

  dimension: habitaciones_capacidad_budget {
    type: number
    sql: ${TABLE}."HABITACIONES_CAPACIDAD_BUDGET" ;;
  }

  dimension: habitaciones_capacidad_mes {
    type: number
    sql: ${TABLE}."HABITACIONES_CAPACIDAD_MES" ;;
  }

  dimension: i_habitacion {
    type: number
    sql: ${TABLE}."I_HABITACION" ;;
  }

  dimension: i_habitacion_budget {
    type: number
    sql: ${TABLE}."I_HABITACION_BUDGET" ;;
  }

  dimension: i_habitacion_mes {
    type: number
    sql: ${TABLE}."I_HABITACION_MES" ;;
  }

  dimension: i_habpen {
    type: number
    sql: ${TABLE}."I_HABPEN" ;;
  }

  dimension: i_habpen_budget {
    type: number
    sql: ${TABLE}."I_HABPEN_BUDGET" ;;
  }

  dimension: i_habpen_mes {
    type: number
    sql: ${TABLE}."I_HABPEN_MES" ;;
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

  dimension: i_totales_budget {
    type: number
    sql: ${TABLE}."I_TOTALES_BUDGET" ;;
  }

  dimension: id_base {
    primary_key: yes
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

  dimension: id_moneda {
    type: string
    sql: ${TABLE}."ID_MONEDA" ;;
  }

  dimension: is_comparable {
    type: number
    sql: ${TABLE}."IS_COMPARABLE" ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}."MES" ;;
  }

  dimension: num_estancias_mes {
    type: number
    sql: ${TABLE}."NUM_ESTANCIAS_MES" ;;
  }

  dimension: num_habitaciones {
    type: number
    sql: ${TABLE}."NUM_HABITACIONES" ;;
  }

  dimension: num_habitaciones_mes {
    type: number
    sql: ${TABLE}."NUM_HABITACIONES_MES" ;;
  }

  dimension: roomnights {
    type: number
    sql: ${TABLE}."ROOMNIGHTS" ;;
  }


}
