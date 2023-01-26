view: fct_prevision_capacidad {
  sql_table_name: "CORE"."FCT_PREVISION_CAPACIDAD"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
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

  dimension: estancias_capacidad {
    type: number
    sql: ${TABLE}."ESTANCIAS_CAPACIDAD" ;;
  }

  dimension: estancias_fo1 {
    type: number
    sql: ${TABLE}."ESTANCIAS_FO1" ;;
  }

  dimension: estancias_fo2 {
    type: number
    sql: ${TABLE}."ESTANCIAS_FO2" ;;
  }

  dimension: estancias_fo3 {
    type: number
    sql: ${TABLE}."ESTANCIAS_FO3" ;;
  }

  dimension: estancias_inventario {
    type: number
    sql: ${TABLE}."ESTANCIAS_INVENTARIO" ;;
  }

  dimension_group: f_activacion {
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
    sql: ${TABLE}."F_ACTIVACION" ;;
  }

  dimension_group: f_activacion_aa {
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
    sql: ${TABLE}."F_ACTIVACION_AA" ;;
  }

  dimension_group: f_borrado {
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
    sql: ${TABLE}."F_BORRADO" ;;
  }

  dimension_group: f_borrado_aa {
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."F_PREVISTA" ;;
  }

  dimension_group: f_prevista_aa {
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
    sql: ${TABLE}."F_PREVISTA_AA" ;;
  }

  dimension: habitaciones_capacidad {
    type: number
    sql: ${TABLE}."HABITACIONES_CAPACIDAD" ;;
  }

  dimension: habitaciones_fo1 {
    type: number
    sql: ${TABLE}."HABITACIONES_FO1" ;;
  }

  dimension: habitaciones_fo2 {
    type: number
    sql: ${TABLE}."HABITACIONES_FO2" ;;
  }

  dimension: habitaciones_fo3 {
    type: number
    sql: ${TABLE}."HABITACIONES_FO3" ;;
  }

  dimension: habitaciones_inventario {
    type: number
    sql: ${TABLE}."HABITACIONES_INVENTARIO" ;;
  }

  dimension: id_cierre {
    type: number
    sql: ${TABLE}."ID_CIERRE" ;;
  }

  dimension: id_hotel {
    type: number
    sql: ${TABLE}."ID_HOTEL" ;;
  }

  dimension: id_origen_info {
    type: number
    sql: ${TABLE}."ID_ORIGEN_INFO" ;;
  }

  dimension: nom_fichero {
    type: string
    sql: ${TABLE}."NOM_FICHERO" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
