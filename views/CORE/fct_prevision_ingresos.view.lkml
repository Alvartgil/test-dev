view: fct_prevision_ingresos {
  sql_table_name: "CORE"."FCT_PREVISION_INGRESOS"
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

  dimension: dbt_scd_id {
    type: string
    sql: ${TABLE}."DBT_SCD_ID" ;;
  }

  dimension_group: dbt_updated {
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
    sql: ${TABLE}."DBT_UPDATED_AT" ;;
  }

  dimension_group: dbt_valid_from {
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
    sql: ${TABLE}."DBT_VALID_FROM" ;;
  }

  dimension_group: dbt_valid_to {
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
    sql: ${TABLE}."DBT_VALID_TO" ;;
  }

  dimension: des_reserva {
    type: string
    sql: ${TABLE}."DES_RESERVA" ;;
  }

  dimension: es_deducible_inventario {
    type: string
    sql: ${TABLE}."ES_DEDUCIBLE_INVENTARIO" ;;
  }

  dimension: es_tentativa {
    type: string
    sql: ${TABLE}."ES_TENTATIVA" ;;
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

  dimension: factor_dolar {
    type: number
    sql: ${TABLE}."FACTOR_DOLAR" ;;
  }

  dimension: factor_euro {
    type: number
    sql: ${TABLE}."FACTOR_EURO" ;;
  }

  dimension: i_alojamiento {
    type: number
    sql: ${TABLE}."I_ALOJAMIENTO" ;;
  }

  dimension: i_habitacion {
    type: number
    sql: ${TABLE}."I_HABITACION" ;;
  }

  dimension: i_pension {
    type: number
    sql: ${TABLE}."I_PENSION" ;;
  }

  dimension: i_totales {
    type: number
    sql: ${TABLE}."I_TOTALES" ;;
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

  dimension: id_tipo_pax {
    type: string
    sql: ${TABLE}."ID_TIPO_PAX" ;;
  }

  dimension: id_tipo_pax_fh {
    type: string
    sql: ${TABLE}."ID_TIPO_PAX_FH" ;;
  }

  dimension: id_tipo_regimen {
    type: string
    sql: ${TABLE}."ID_TIPO_REGIMEN" ;;
  }

  dimension: id_tipo_regimen_fh {
    type: string
    sql: ${TABLE}."ID_TIPO_REGIMEN_FH" ;;
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
