view: fct_ocupacion {
  sql_table_name: "CORE"."FCT_OCUPACION"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: anio {
    type: number
    sql: ${TABLE}."ANIO" ;;
  }

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: es_deducible_inventario {
    type: string
    sql: ${TABLE}."ES_DEDUCIBLE_INVENTARIO" ;;
  }

  dimension: es_no_show {
    type: string
    sql: ${TABLE}."ES_NO_SHOW" ;;
  }

  dimension: es_tentativa {
    type: string
    sql: ${TABLE}."ES_TENTATIVA" ;;
  }

  dimension: es_uso_casa {
    type: string
    sql: ${TABLE}."ES_USO_CASA" ;;
  }

  dimension: es_uso_diurno {
    type: string
    sql: ${TABLE}."ES_USO_DIURNO" ;;
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

  dimension_group: f_activacion_aa {
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
    sql: ${TABLE}."F_ACTIVACION_AA" ;;
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

  dimension_group: f_borrado_aa {
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
    sql: ${TABLE}."F_BORRADO_AA" ;;
  }

  dimension_group: f_carga {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."F_CARGA" ;;
  }

  dimension_group: f_prevista {
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
    sql: ${TABLE}."F_PREVISTA" ;;
  }

  dimension_group: f_prevista_aa {
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
    sql: ${TABLE}."F_PREVISTA_AA" ;;
  }

  dimension: habitacion {
    type: string
    sql: ${TABLE}."HABITACION" ;;
  }

  dimension: id_cierre {
    type: number
    sql: ${TABLE}."ID_CIERRE" ;;
  }

  dimension: id_desglose {
    type: number
    sql: ${TABLE}."ID_DESGLOSE" ;;
  }

  dimension: id_ejecucion {
    type: number
    sql: ${TABLE}."ID_EJECUCION" ;;
  }

  dimension: id_etl {
    type: string
    sql: ${TABLE}."ID_ETL" ;;
  }

  dimension: id_hotel {
    type: number
    sql: ${TABLE}."ID_HOTEL" ;;
  }

  dimension: id_mes_produccion {
    type: number
    sql: ${TABLE}."ID_MES_PRODUCCION" ;;
  }

  dimension: id_origen_info {
    type: number
    sql: ${TABLE}."ID_ORIGEN_INFO" ;;
  }

  dimension: id_reserva {
    type: string
    sql: ${TABLE}."ID_RESERVA" ;;
  }

  dimension: id_tipo_habitacion {
    type: string
    sql: ${TABLE}."ID_TIPO_HABITACION" ;;
  }

  dimension: id_tipo_habitacion_fh {
    type: string
    sql: ${TABLE}."ID_TIPO_HABITACION_FH" ;;
  }

  dimension: id_tipo_regimen {
    type: string
    sql: ${TABLE}."ID_TIPO_REGIMEN" ;;
  }

  dimension: id_tipo_regimen_fh {
    type: string
    sql: ${TABLE}."ID_TIPO_REGIMEN_FH" ;;
  }

  dimension: num_booking_pendiente {
    type: number
    sql: ${TABLE}."NUM_BOOKING_PENDIENTE" ;;
  }

  dimension: num_entradas_hab {
    type: number
    sql: ${TABLE}."NUM_ENTRADAS_HAB" ;;
  }

  dimension: num_entradas_pax {
    type: number
    sql: ${TABLE}."NUM_ENTRADAS_PAX" ;;
  }

  dimension: num_entradas_pax_ad {
    type: number
    sql: ${TABLE}."NUM_ENTRADAS_PAX_AD" ;;
  }

  dimension: num_entradas_pax_cu {
    type: number
    sql: ${TABLE}."NUM_ENTRADAS_PAX_CU" ;;
  }

  dimension: num_entradas_pax_jr {
    type: number
    sql: ${TABLE}."NUM_ENTRADAS_PAX_JR" ;;
  }

  dimension: num_entradas_pax_ni {
    type: number
    sql: ${TABLE}."NUM_ENTRADAS_PAX_NI" ;;
  }

  dimension: num_estancias {
    type: number
    sql: ${TABLE}."NUM_ESTANCIAS" ;;
  }

  dimension: num_estancias_ad {
    type: number
    sql: ${TABLE}."NUM_ESTANCIAS_AD" ;;
  }

  dimension: num_estancias_cu {
    type: number
    sql: ${TABLE}."NUM_ESTANCIAS_CU" ;;
  }

  dimension: num_estancias_jr {
    type: number
    sql: ${TABLE}."NUM_ESTANCIAS_JR" ;;
  }

  dimension: num_estancias_ni {
    type: number
    sql: ${TABLE}."NUM_ESTANCIAS_NI" ;;
  }

  dimension: num_habitaciones {
    type: number
    sql: ${TABLE}."NUM_HABITACIONES" ;;
  }

  dimension: num_salidas_hab {
    type: number
    sql: ${TABLE}."NUM_SALIDAS_HAB" ;;
  }

  dimension: num_salidas_pax {
    type: number
    sql: ${TABLE}."NUM_SALIDAS_PAX" ;;
  }

  dimension: num_salidas_pax_ad {
    type: number
    sql: ${TABLE}."NUM_SALIDAS_PAX_AD" ;;
  }

  dimension: num_salidas_pax_cu {
    type: number
    sql: ${TABLE}."NUM_SALIDAS_PAX_CU" ;;
  }

  dimension: num_salidas_pax_jr {
    type: number
    sql: ${TABLE}."NUM_SALIDAS_PAX_JR" ;;
  }

  dimension: num_salidas_pax_ni {
    type: number
    sql: ${TABLE}."NUM_SALIDAS_PAX_NI" ;;
  }

  dimension: pseudo_room {
    type: number
    sql: ${TABLE}."PSEUDO_ROOM" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
