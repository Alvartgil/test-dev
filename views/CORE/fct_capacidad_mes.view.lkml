view: fct_capacidad_mes {
  sql_table_name: "CORE"."FCT_CAPACIDAD_MES"
    ;;

  dimension: anio_mes {
    type: number
    sql: ${TABLE}."ANIO_MES" ;;
  }

  dimension: escenario {
    type: string
    sql: ${TABLE}."ESCENARIO" ;;
  }

  dimension: estancias_capacidad {
    type: number
    sql: ${TABLE}."ESTANCIAS_CAPACIDAD" ;;
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

  dimension: habitaciones_capacidad {
    type: number
    sql: ${TABLE}."HABITACIONES_CAPACIDAD" ;;
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
