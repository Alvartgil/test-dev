  view: bob_base {
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
    }
    dimension: is_comparable {
      description: ""
      type: number
    }
  }
