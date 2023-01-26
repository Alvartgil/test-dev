view: dim_portfolio {
  sql_table_name: "CORE"."DIM_PORTFOLIO"
    ;;

  dimension: descripcion_abreviada {
    type: string
    sql: ${TABLE}."DESCRIPCION_ABREVIADA" ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}."ESTATUS" ;;
  }

  dimension_group: fecha_carga {
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
    sql: ${TABLE}."FECHA_CARGA" ;;
    html: {{ rendered_value | date: "%d/%m/%y" }};;
  }

  dimension_group: fecha_fin_operacion {
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
    sql: ${TABLE}."FECHA_FIN_OPERACION" ;;
  }

  dimension_group: fecha_firma {
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
    sql: ${TABLE}."FECHA_FIRMA" ;;
  }

  dimension_group: fecha_inicio_operacion {
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
    sql: ${TABLE}."FECHA_INICIO_OPERACION" ;;
  }

  dimension: id_hotel {
    type: number
    sql: ${TABLE}."ID_HOTEL" ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}."MARCA" ;;
  }

  dimension: num_habitaciones {
    type: number
    sql: ${TABLE}."NUM_HABITACIONES" ;;
  }

  dimension: sociedad {
    type: string
    sql: ${TABLE}."SOCIEDAD" ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}."TIPO" ;;
  }

  dimension: tipo_contrato {
    type: string
    sql: ${TABLE}."TIPO_CONTRATO" ;;
  }

  dimension: tipo_hotel {
    type: string
    sql: ${TABLE}."TIPO_HOTEL" ;;
  }

  dimension: url_imagen_hotel {
    type: string
    sql: ${TABLE}."URL_IMAGEN_HOTEL" ;;
  }

  dimension: updated_date {
    sql: ${TABLE}."FECHA_CARGA" ;;
    html: {{ rendered_value | date: "%d/%m/%y" }};;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
