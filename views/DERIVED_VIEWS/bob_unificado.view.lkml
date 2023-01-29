include: "/models/BoB_unificado.model.lkml"

view: vista_bob_base {
  derived_table: {
    explore_source: bob_base {
      column: id_hotel {field: bob_base.id_hotel}
      column: is_comparable { field: fct_metricas_agrupadas.is_comparable }
      column: i_habpen { field: fct_metricas_agrupadas.i_habpen }
      column: i_habpen_mes { field: fct_metricas_agrupadas.i_habpen_mes }
      column: i_habpen_pickup_d { field: fct_metricas_agrupadas.i_habpen_pickup_d }
      column: i_habpen_pickup_w { field: fct_metricas_agrupadas.i_habpen_pickup_w }
      column: i_habpen_pickup_1_w { field: fct_metricas_agrupadas.i_habpen_pickup_1_w }
      column: i_habpen_pickup_2_w { field: fct_metricas_agrupadas.i_habpen_pickup_2_w }
      column: i_habpen_pickup_3_w { field: fct_metricas_agrupadas.i_habpen_pickup_3_w }
      column: i_habpen_pickup_4_w { field: fct_metricas_agrupadas.i_habpen_pickup_4_w }
      column: habitaciones_capacidad { field: fct_metricas_agrupadas.habitaciones_capacidad }
      column: num_habitaciones { field: fct_metricas_agrupadas.num_habitaciones }
      column: adr_numerador { field: fct_metricas_agrupadas.adr_numerador }
      column: adr_denominador { field: fct_metricas_agrupadas.adr_denominador }
      column: i_totales_budget { field: fct_metricas_agrupadas.i_totales_budget }
      column: updated_date { field: bob_base.updated_date }
      column: mes_actual { field: dim_tiempo_mes.mes_actual }
      column: anio_actual { field: dim_tiempo_mes.anio_actual }
      column: mes { field: dim_tiempo_mes.mes }
      filters: {
        field: dim_tiempo_forecast.fecha_forecast_actual
        value: "Current"
      }
    }
  }
  dimension: id_hotel {
    type: number
  }
  dimension: is_comparable {
    type: number
  }
  dimension: updated_date {
  }
  measure: updated {
    html: {{ rendered_value | date: "%d/%m/%y" }};;
    sql: max(${updated_date}) ;;
  }
  dimension: i_habpen {
    type: number
  }
  dimension: i_habpen_mes {
    type: number
  }
  dimension: i_habpen_pickup_d {
    type: number
  }
  dimension: i_habpen_pickup_w {
    type: number
  }
  dimension: i_habpen_pickup_1_w {
    type: number
  }
  dimension: i_habpen_pickup_2_w {
    type: number
  }
  dimension: i_habpen_pickup_3_w {
    type: number
  }
  dimension: i_habpen_pickup_4_w {
    type: number
  }
  dimension: habitaciones_capacidad {
    type: number
  }
  dimension: num_habitaciones {
    type: number
  }
  dimension: adr_numerador {
    type: number
  }
  dimension: adr_denominador {
    type: number
  }
  dimension: i_totales_budget {
    type: number
  }
  dimension: mes_actual {
    type: string
  }
  dimension: anio_actual {
    type: string
  }
  dimension: mes {
    type: number
  }
  measure: sum_i_habpen {
    value_format: "#,##0"
    type: number
    sql: sum(${i_habpen});;
  }
  measure: sum_i_habpen_mes {
    value_format: "#,##0"
    type: number
    sql: sum(${i_habpen_mes});;
  }
  measure: rooms_occupancy {
    value_format: "#,##0.0%"
    type: number
    sql:sum(DIV0(${num_habitaciones},${habitaciones_capacidad}));;
  }
  measure: adr {
    value_format: "0.0\%"
    type: number
    sql: sum(DIV0(${adr_numerador},${adr_denominador}));;
  }
  measure: budget {
    value_format: "#,##0"
    type: number
    sql: sum(${i_totales_budget});;
  }
  measure: pickup_d {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen}-${i_habpen_pickup_d},${i_habpen_pickup_d}));;
  }

  measure: pickup_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen}-${i_habpen_pickup_w},${i_habpen_pickup_w}));;
  }

  measure: pickup_1_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen_pickup_w}-${i_habpen_pickup_1_w},${i_habpen_pickup_1_w}));;
  }

  measure: pickup_2_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen_pickup_1_w}-${i_habpen_pickup_2_w},${i_habpen_pickup_2_w}));;
  }

  measure: pickup_3_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen_pickup_2_w}-${i_habpen_pickup_3_w},${i_habpen_pickup_3_w}));;
  }

  measure: pickup_4_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen_pickup_3_w}-${i_habpen_pickup_4_w},${i_habpen_pickup_4_w}));;
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
    value_format: "#,##0.0%"
    sql: COALESCE(${rooms_occupancy},0) - COALESCE(${comparado.rooms_occupancy},0);;
  }

  measure: var_pickup_d {
    type: number
    value_format: "#,##0.0%"
    sql: COALESCE(${pickup_d},0) - COALESCE(${comparado.pickup_d},0);;
  }

  measure: var_pickup_w {
    type: number
    value_format: "#,##0.0%"
    sql: COALESCE(${pickup_w},0) - COALESCE(${comparado.pickup_w},0);;
  }

  measure: var_pickup_1_w {
    type: number
    value_format: "#,##0.0%"
    sql: COALESCE(${pickup_1_w},0) - COALESCE(${comparado.pickup_1_w},0);;
  }

  measure: var_pickup_2_w {
    type: number
    value_format: "#,##0.0%"
    sql: COALESCE(${pickup_2_w},0) - COALESCE(${comparado.pickup_2_w},0);;
  }

  measure: var_pickup_3_w {
    type: number
    value_format: "#,##0.0%"
    sql: COALESCE(${pickup_3_w},0) - COALESCE(${comparado.pickup_3_w},0);;
  }

  measure: var_pickup_4_w {
    type: number
    value_format: "#,##0.0%"
    sql: COALESCE(${pickup_4_w},0) - COALESCE(${comparado.pickup_4_w},0);;
  }

  measure: av_rate {
    type: number
    value_format: "#,##0.0%"
    sql: CASE WHEN ${adr} is null or ${comparado.adr} is null THEN null ELSE DIV0(${adr},${comparado.adr})-1 END;;
  }

}


view: vista_bob_comparado {
  derived_table: {
    explore_source: bob_comparado {
      column: id_hotel {field: bob_comparado.id_hotel}
      column: is_comparable {field: fct_metricas_agrupadas.is_comparable }
      column: i_habpen { field: fct_metricas_agrupadas.i_habpen }
      column: i_habpen_mes { field: fct_metricas_agrupadas.i_habpen_mes }
      column: i_habpen_pickup_d { field: fct_metricas_agrupadas.i_habpen_pickup_d }
      column: i_habpen_pickup_w { field: fct_metricas_agrupadas.i_habpen_pickup_w }
      column: i_habpen_pickup_1_w { field: fct_metricas_agrupadas.i_habpen_pickup_1_w }
      column: i_habpen_pickup_2_w { field: fct_metricas_agrupadas.i_habpen_pickup_2_w }
      column: i_habpen_pickup_3_w { field: fct_metricas_agrupadas.i_habpen_pickup_3_w }
      column: i_habpen_pickup_4_w { field: fct_metricas_agrupadas.i_habpen_pickup_4_w }
      column: habitaciones_capacidad { field: fct_metricas_agrupadas.habitaciones_capacidad }
      column: num_habitaciones { field: fct_metricas_agrupadas.num_habitaciones }
      column: adr_numerador { field: fct_metricas_agrupadas.adr_numerador }
      column: adr_denominador { field: fct_metricas_agrupadas.adr_denominador }
      column: i_totales_budget { field: fct_metricas_agrupadas.i_totales_budget }
      column: mes_actual { field: dim_tiempo_mes.mes_actual }
      column: anio_actual { field: dim_tiempo_mes.anio_actual }
      column: mes { field: dim_tiempo_mes.mes }
      filters: {
        field: dim_tiempo_forecast.fecha_forecast_actual
        value: "Current"
      }
    }
  }
  dimension: id_hotel {
    type: number
  }
  dimension: is_comparable {
    type: number
  }
  dimension: i_habpen {
    type: number
  }
  dimension: i_habpen_mes {
    type: number
  }
  dimension: i_habpen_pickup_d {
    type: number
  }
  dimension: i_habpen_pickup_w {
    type: number
  }
  dimension: i_habpen_pickup_1_w {
    type: number
  }
  dimension: i_habpen_pickup_2_w {
    type: number
  }
  dimension: i_habpen_pickup_3_w {
    type: number
  }
  dimension: i_habpen_pickup_4_w {
    type: number
  }
  dimension: habitaciones_capacidad {
    type: number
  }
  dimension: num_habitaciones {
    type: number
  }
  dimension: adr_numerador {
    type: number
  }
  dimension: adr_denominador {
    type: number
  }
  dimension: i_totales_budget {
    type: number
  }
  dimension: mes_actual {
    type: string
  }
  dimension: anio_actual {
    type: string
  }
  dimension: mes {
    type: number
  }
  measure: sum_i_habpen {
    value_format: "#,##0"
    type: number
    sql: sum(${i_habpen});;
  }
  measure: sum_i_habpen_mes {
    value_format: "#,##0"
    type: number
    sql: sum(${i_habpen_mes});;
  }
  measure: rooms_occupancy {
    value_format: "#,##0.0%"
    type: number
    sql:sum(DIV0(${num_habitaciones},${habitaciones_capacidad}));;
  }
  measure: adr {
    value_format: "0.0\%"
    type: number
    sql: sum(DIV0(${adr_numerador},${adr_denominador}));;
  }
  measure: budget {
    value_format: "#,##0.0%"
    type: number
    sql: sum(${i_totales_budget});;
  }
  measure: pickup_d {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen}-${i_habpen_pickup_d},${i_habpen_pickup_d}));;
  }

  measure: pickup_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen}-${i_habpen_pickup_w},${i_habpen_pickup_w}));;
  }

  measure: pickup_1_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen_pickup_w}-${i_habpen_pickup_1_w},${i_habpen_pickup_1_w}));;
  }

  measure: pickup_2_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen_pickup_1_w}-${i_habpen_pickup_2_w},${i_habpen_pickup_2_w}));;
  }

  measure: pickup_3_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen_pickup_2_w}-${i_habpen_pickup_3_w},${i_habpen_pickup_3_w}));;
  }

  measure: pickup_4_w {
    value_format: "#,##0.0%"
    type: number
    sql: sum(DIV0(${i_habpen_pickup_3_w}-${i_habpen_pickup_4_w},${i_habpen_pickup_4_w}));;
  }

}
