view: fct_produccion_capacidad {
  sql_table_name: "CORE"."FCT_PRODUCCION_CAPACIDAD"
    ;;

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

  dimension_group: fecha {
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
    sql: ${TABLE}."FECHA" ;;
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
    drill_fields: []
  }
}
