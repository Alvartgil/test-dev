view: dim_estructura_geografica {
  sql_table_name: "CORE"."DIM_ESTRUCTURA_GEOGRAFICA"
    ;;

  dimension: des_activo {
    type: string
    sql: ${TABLE}."DES_ACTIVO" ;;
  }

  dimension: des_contrato {
    type: string
    sql: ${TABLE}."DES_CONTRATO" ;;
  }

  dimension: des_marca {
    type: string
    sql: ${TABLE}."DES_MARCA" ;;
  }

  dimension: des_negocio {
    type: string
    sql: ${TABLE}."DES_NEGOCIO" ;;
  }

  dimension: des_nivel1 {
    type: string
    sql: ${TABLE}."DES_NIVEL1" ;;
  }

  dimension: des_nivel2 {
    type: string
    sql: ${TABLE}."DES_NIVEL2" ;;
  }

  dimension: des_nivel3 {
    type: string
    sql: ${TABLE}."DES_NIVEL3" ;;
  }

  dimension: des_nivel4 {
    type: string
    sql: ${TABLE}."DES_NIVEL4" ;;
  }

  dimension: des_nivel5 {
    type: string
    sql: ${TABLE}."DES_NIVEL5" ;;
  }

  dimension: des_nivel6 {
    type: string
    sql: ${TABLE}."DES_NIVEL6" ;;
  }

  dimension: des_nivel7 {
    type: string
    sql: ${TABLE}."DES_NIVEL7" ;;
  }

  dimension: des_nivel8 {
    type: string
    sql: ${TABLE}."DES_NIVEL8" ;;
  }

  dimension: des_propiedad {
    type: string
    sql: ${TABLE}."DES_PROPIEDAD" ;;
  }

  dimension: des_sociedad {
    type: string
    sql: ${TABLE}."DES_SOCIEDAD" ;;
  }

  dimension_group: f_alta {
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
    sql: ${TABLE}."F_ALTA" ;;
  }

  dimension_group: f_baja {
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
    sql: ${TABLE}."F_BAJA" ;;
  }

  dimension: id_activo {
    type: number
    sql: ${TABLE}."ID_ACTIVO" ;;
  }

  dimension: id_contrato {
    type: number
    sql: ${TABLE}."ID_CONTRATO" ;;
  }

  dimension: id_hotel {
    type: number
    sql: ${TABLE}."ID_HOTEL" ;;
  }

  dimension: id_idioma {
    type: string
    sql: ${TABLE}."ID_IDIOMA" ;;
  }

  dimension: id_jerarquia {
    type: number
    sql: ${TABLE}."ID_JERARQUIA" ;;
  }

  dimension: id_marca {
    type: number
    sql: ${TABLE}."ID_MARCA" ;;
  }

  dimension: id_moneda {
    type: string
    sql: ${TABLE}."ID_MONEDA" ;;
  }

  dimension: id_negocio {
    type: number
    sql: ${TABLE}."ID_NEGOCIO" ;;
  }

  dimension: id_nivel1 {
    type: string
    sql: ${TABLE}."ID_NIVEL1" ;;
  }

  dimension: id_nivel2 {
    type: string
    sql: ${TABLE}."ID_NIVEL2" ;;
  }

  dimension: id_nivel3 {
    type: string
    sql: ${TABLE}."ID_NIVEL3" ;;
  }

  dimension: id_nivel4 {
    type: string
    sql: ${TABLE}."ID_NIVEL4" ;;
  }

  dimension: id_nivel5 {
    type: string
    sql: ${TABLE}."ID_NIVEL5" ;;
  }

  dimension: id_nivel6 {
    type: string
    sql: ${TABLE}."ID_NIVEL6" ;;
  }

  dimension: id_nivel7 {
    type: string
    sql: ${TABLE}."ID_NIVEL7" ;;
  }

  dimension: id_nivel8 {
    type: string
    sql: ${TABLE}."ID_NIVEL8" ;;
  }

  dimension: id_pais {
    type: string
    sql: ${TABLE}."ID_PAIS" ;;
  }

  dimension: id_propiedad {
    type: number
    sql: ${TABLE}."ID_PROPIEDAD" ;;
  }

  dimension: id_sociedad {
    type: number
    sql: ${TABLE}."ID_SOCIEDAD" ;;
  }

  dimension: orden3 {
    type: number
    sql: ${TABLE}."ORDEN3" ;;
  }

  dimension: orden4 {
    type: number
    sql: ${TABLE}."ORDEN4" ;;
  }

  dimension: posicion1 {
    type: number
    sql: ${TABLE}."POSICION1" ;;
  }

  dimension: posicion2 {
    type: number
    sql: ${TABLE}."POSICION2" ;;
  }

  dimension: posicion3 {
    type: number
    sql: ${TABLE}."POSICION3" ;;
  }

  dimension: posicion4 {
    type: number
    sql: ${TABLE}."POSICION4" ;;
  }

  dimension: posicion5 {
    type: number
    sql: ${TABLE}."POSICION5" ;;
  }

  dimension: posicion6 {
    type: number
    sql: ${TABLE}."POSICION6" ;;
  }

  dimension: posicion7 {
    type: number
    sql: ${TABLE}."POSICION7" ;;
  }

  dimension: posicion8 {
    type: number
    sql: ${TABLE}."POSICION8" ;;
  }

  dimension: sidh_rrhh {
    type: number
    sql: ${TABLE}."SIDH_RRHH" ;;
  }

  dimension: tiene_bas {
    type: number
    sql: ${TABLE}."TIENE_BAS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
