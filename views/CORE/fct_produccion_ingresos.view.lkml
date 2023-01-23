view: fct_produccion_ingresos {
  sql_table_name: "CORE"."FCT_PRODUCCION_INGRESOS"
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

  dimension: factor_dolar {
    type: number
    sql: ${TABLE}."FACTOR_DOLAR" ;;
  }

  dimension: factor_euro {
    type: number
    sql: ${TABLE}."FACTOR_EURO" ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}."FECHA" ;;
  }

  dimension_group: fecha_aa {
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
    sql: ${TABLE}."FECHA_AA" ;;
  }

  dimension: i_ab {
    type: number
    sql: ${TABLE}."I_AB" ;;
  }

  dimension: i_alojamiento {
    type: number
    sql: ${TABLE}."I_ALOJAMIENTO" ;;
  }

  dimension: i_alquileres {
    type: number
    sql: ${TABLE}."I_ALQUILERES" ;;
  }

  dimension: i_arrendamientos_otros_ingresos {
    type: number
    sql: ${TABLE}."I_ARRENDAMIENTOS_OTROS_INGRESOS" ;;
  }

  dimension: i_audiovisual {
    type: number
    sql: ${TABLE}."I_AUDIOVISUAL" ;;
  }

  dimension: i_banquete {
    type: number
    sql: ${TABLE}."I_BANQUETE" ;;
  }

  dimension: i_bar {
    type: number
    sql: ${TABLE}."I_BAR" ;;
  }

  dimension: i_bebida {
    type: number
    sql: ${TABLE}."I_BEBIDA" ;;
  }

  dimension: i_clientes_desplazados {
    type: number
    sql: ${TABLE}."I_CLIENTES_DESPLAZADOS" ;;
  }

  dimension: i_cocktail {
    type: number
    sql: ${TABLE}."I_COCKTAIL" ;;
  }

  dimension: i_coffee_break {
    type: number
    sql: ${TABLE}."I_COFFEE_BREAK" ;;
  }

  dimension: i_comida {
    type: number
    sql: ${TABLE}."I_COMIDA" ;;
  }

  dimension: i_comida_trabajo {
    type: number
    sql: ${TABLE}."I_COMIDA_TRABAJO" ;;
  }

  dimension: i_comision_agencia {
    type: number
    sql: ${TABLE}."I_COMISION_AGENCIA" ;;
  }

  dimension: i_cxl_no_show {
    type: number
    sql: ${TABLE}."I_CXL_NO_SHOW" ;;
  }

  dimension: i_desayuno {
    type: number
    sql: ${TABLE}."I_DESAYUNO" ;;
  }

  dimension: i_extras_ab {
    type: number
    sql: ${TABLE}."I_EXTRAS_AB" ;;
  }

  dimension: i_golf {
    type: number
    sql: ${TABLE}."I_GOLF" ;;
  }

  dimension: i_habitacion {
    type: number
    sql: ${TABLE}."I_HABITACION" ;;
  }

  dimension: i_minibar {
    type: number
    sql: ${TABLE}."I_MINIBAR" ;;
  }

  dimension: i_otros {
    type: number
    sql: ${TABLE}."I_OTROS" ;;
  }

  dimension: i_otros_departamentos_operativos {
    type: number
    sql: ${TABLE}."I_OTROS_DEPARTAMENTOS_OPERATIVOS" ;;
  }

  dimension: i_pension {
    type: number
    sql: ${TABLE}."I_PENSION" ;;
  }

  dimension: i_restaurante {
    type: number
    sql: ${TABLE}."I_RESTAURANTE" ;;
  }

  dimension: i_room_service {
    type: number
    sql: ${TABLE}."I_ROOM_SERVICE" ;;
  }

  dimension: i_salon {
    type: number
    sql: ${TABLE}."I_SALON" ;;
  }

  dimension: i_spa_centro_deportivo {
    type: number
    sql: ${TABLE}."I_SPA_CENTRO_DEPORTIVO" ;;
  }

  dimension: i_tienda {
    type: number
    sql: ${TABLE}."I_TIENDA" ;;
  }

  dimension: i_totales {
    type: number
    sql: ${TABLE}."I_TOTALES" ;;
  }

  dimension: i_upgrades {
    type: number
    sql: ${TABLE}."I_UPGRADES" ;;
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

  dimension: id_moneda {
    type: string
    sql: ${TABLE}."ID_MONEDA" ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
