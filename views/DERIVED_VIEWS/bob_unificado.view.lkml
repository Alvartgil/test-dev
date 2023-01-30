include: "/models/BoB_unificado.model.lkml"

view: vista_bob_base {
  derived_table: {
    explore_source: Bob_Base {
      column: id_hotel { field: dim_portfolio.id_hotel }
      column: sum_i_habpen { field: fct_metricas_agrupadas.sum_i_habpen }
      column: sum_i_habpen_mes { field: fct_metricas_agrupadas.sum_i_habpen_mes }
      column: budget { field: fct_metricas_agrupadas.budget }
      column: rooms_occupancy { field: fct_metricas_agrupadas.rooms_occupancy }
      column: adr { field: fct_metricas_agrupadas.adr }
      column: pickup_d { field: fct_metricas_agrupadas.pickup_d }
      column: pickup_w { field: fct_metricas_agrupadas.pickup_w }
      column: pickup_1_w { field: fct_metricas_agrupadas.pickup_1_w }
      column: pickup_2_w { field: fct_metricas_agrupadas.pickup_2_w }
      column: pickup_3_w { field: fct_metricas_agrupadas.pickup_3_w }
      column: pickup_4_w { field: fct_metricas_agrupadas.pickup_4_w }
      column: updated_date { field: dim_portfolio.updated_date }
      column: is_comparable { field: fct_metricas_agrupadas.is_comparable }
      column: anio_actual  {field: dim_tiempo_mes.anio_actual}
      column: mes_actual  {field: dim_tiempo_mes.mes_actual}
      column: mes  {field: dim_tiempo_mes.mes}
      filters: {
        field: dim_tiempo_forecast.fecha_forecast_actual
        value: "Current"
      }

    }
  }
  dimension: id_hotel {
    description: ""
    type: number
  }
  dimension: sum_i_habpen {
    description: ""
    type: number
    value_format: "#,##0"
  }
  dimension: sum_i_habpen_mes {
    description: ""
    type: number
  }
  dimension: budget {
    description: ""
    type: number
  }
  dimension: rooms_occupancy {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: adr {
    description: ""
    value_format: "0.0\%"
    type: number
  }
  dimension: pickup_d {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_w {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_1_w {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_2_w {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_3_w {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_4_w {
    description: ""
    value_format: "0.0%"
    type: number
  }

  dimension: updated_date {
    description: ""
    html: {{ rendered_value | date: "%d/%m/%y" }};;
  }
  dimension: is_comparable {
    description: ""
    type: number
  }

  dimension: anio_actual {
    type: string
  }

  dimension: mes_actual {
    type: string
  }

  dimension: mes {
    type: string
  }

  dimension: comparabilidad {
    type: string
    sql: CASE WHEN ${comparado.is_comparable} = 1 AND ${is_comparable} = 1 THEN 'LfL' ELSE 'Non LfL' END ;;
  }

  measure: var_ {
    type: number
    value_format: "#,##0"
    sql: COALESCE(${sum_i_habpen},0) - COALESCE(${comparado.sum_i_habpen},0);;
  }

  measure: ocp_pp {
    type: number
    value_format: "0.0%"
    sql: COALESCE(${rooms_occupancy},0) - COALESCE(${comparado.rooms_occupancy},0);;
  }

  measure: var_pickup_d {
    type: number
    value_format: "0.0%"
    sql: COALESCE(${pickup_d},0) - COALESCE(${comparado.pickup_d},0);;
  }

  measure: var_pickup_w {
    type: number
    value_format: "0.0%"
    sql: COALESCE(${pickup_w},0) - COALESCE(${comparado.pickup_w},0);;
  }

  measure: var_pickup_1_w {
    type: number
    value_format: "0.0%"
    sql: COALESCE(${pickup_1_w},0) - COALESCE(${comparado.pickup_1_w},0);;
  }

  measure: var_pickup_2_w {
    type: number
    value_format: "0.0%"
    sql: COALESCE(${pickup_2_w},0) - COALESCE(${comparado.pickup_2_w},0);;
  }

  measure: var_pickup_3_w {
    type: number
    value_format: "0.0%"
    sql: COALESCE(${pickup_3_w},0) - COALESCE(${comparado.pickup_3_w},0);;
  }

  measure: var_pickup_4_w {
    type: number
    value_format: "0.0%"
    sql: COALESCE(${pickup_4_w},0) - COALESCE(${comparado.pickup_4_w},0);;
  }

  measure: av_rate {
    type: number
    value_format: "0.0%"
    sql: CASE WHEN ${adr} is null or ${comparado.adr} is null THEN null ELSE DIV0(${adr},${comparado.adr})-1 END;;
  }
  filter: filtro_anio_actual {
    type: string
    suggest_dimension: anio_actual
  }
  filter: filtro_mes_actual {
    type: string
    suggest_dimension: mes_actual
  }

}

view: vista_bob_comparado {
  derived_table: {
    explore_source: Bob_Comparado {
      column: id_hotel { field: dim_portfolio.id_hotel }
      column: sum_i_habpen { field: fct_metricas_agrupadas.sum_i_habpen }
      column: sum_i_habpen_mes { field: fct_metricas_agrupadas.sum_i_habpen_mes }
      column: budget { field: fct_metricas_agrupadas.budget }
      column: adr { field: fct_metricas_agrupadas.adr }
      column: rooms_occupancy { field: fct_metricas_agrupadas.rooms_occupancy }
      column: pickup_d { field: fct_metricas_agrupadas.pickup_d }
      column: pickup_w { field: fct_metricas_agrupadas.pickup_w }
      column: pickup_1_w { field: fct_metricas_agrupadas.pickup_1_w }
      column: pickup_2_w { field: fct_metricas_agrupadas.pickup_2_w }
      column: pickup_3_w { field: fct_metricas_agrupadas.pickup_3_w }
      column: pickup_4_w { field: fct_metricas_agrupadas.pickup_4_w }
      column: is_comparable { field: fct_metricas_agrupadas.is_comparable }
      column: anio_actual  {field: dim_tiempo_mes.anio_actual}
      column: mes_actual  {field: dim_tiempo_mes.mes_actual}
      column: mes  {field: dim_tiempo_mes.mes}
      filters: {
        field: dim_tiempo_forecast.fecha_forecast_actual
        value: "Current"
      }
    }
  }
  dimension: id_hotel {
    description: ""
    type: number
  }
  dimension: sum_i_habpen {
    description: ""
    type: number
    value_format: "#,##0"
  }
  dimension: sum_i_habpen_mes {
    description: ""
    type: number
    value_format: "#,##0"
  }
  dimension: budget {
    description: ""
    type: number
  }
  dimension: adr {
    description: ""
    value_format: "0.0\%"
    type: number
  }
  dimension: rooms_occupancy {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_d {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_w {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_1_w {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_2_w {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_3_w {
    description: ""
    value_format: "0.0%"
    type: number
  }
  dimension: pickup_4_w {
    description: ""
    value_format: "0.0%"
    type: number
  }

  dimension: is_comparable {
    description: ""
    type: number
  }

  dimension: anio_actual {
    type: string
  }

  dimension: mes_actual {
    type: string
  }

  dimension: mes {
    type: string
  }

  filter: filtro_anio_comparado {
    type: string
    suggest_dimension: anio_actual
  }

}
