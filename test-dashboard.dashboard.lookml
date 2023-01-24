- dashboard: test_dashboard
  title: BoB Dashboard - test_dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: HJxJLbeJRdApx2jRcQ3b5E
  elements:
  - name: New Tile
    title: New Tile
    title_hidden: true
    merged_queries:
    - model: BoB_Base
      explore: Bob_Base
      type: looker_grid
      fields: [dim_portfolio.id_hotel, fct_metricas_agrupadas.sum_i_habpen, fct_metricas_agrupadas.sum_i_habpen_mes,
        fct_metricas_agrupadas.budget, fct_metricas_agrupadas.rooms_occupancy, fct_metricas_agrupadas.adr,
        fct_metricas_agrupadas.pickup_d, fct_metricas_agrupadas.pickup_w, fct_metricas_agrupadas.pickup_1_w,
        fct_metricas_agrupadas.pickup_2_w, fct_metricas_agrupadas.pickup_3_w, fct_metricas_agrupadas.pickup_4_w,
        dim_portfolio.updated_date]
      filters:
        dim_tiempo_forecast.fecha_forecast_actual: Current
      sorts: [dim_portfolio.id_hotel]
      limit: 500
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: BoB_Comparado
      explore: Bob_Comparado
      type: table
      fields: [dim_portfolio.id_hotel, fct_metricas_agrupadas.sum_i_habpen, fct_metricas_agrupadas.sum_i_habpen_mes,
        fct_metricas_agrupadas.budget, fct_metricas_agrupadas.adr, fct_metricas_agrupadas.rooms_occupancy,
        fct_metricas_agrupadas.pickup_d, fct_metricas_agrupadas.pickup_w, fct_metricas_agrupadas.pickup_1_w,
        fct_metricas_agrupadas.pickup_2_w, fct_metricas_agrupadas.pickup_3_w, fct_metricas_agrupadas.pickup_4_w]
      filters:
        dim_tiempo_forecast.fecha_forecast_actual: Current
      sorts: [fct_metricas_agrupadas.sum_i_habpen desc 0]
      limit: 500
      join_fields:
      - field_name: dim_portfolio.id_hotel
        source_field_name: dim_portfolio.id_hotel
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      dim_portfolio.id_hotel: ID Hotel
      fct_metricas_agrupadas.sum_i_habpen: Bob
      q1_fct_metricas_agrupadas.sum_i_habpen: Bob PY
      q1_fct_metricas_agrupadas.sum_i_habpen_mes: PY
      fct_metricas_agrupadas.budget: Bud
      var_occupancy: "%Ocp(pp)"
      var_adr_1: Av.Rate
      fct_metricas_agrupadas.pickup_d: D
      fct_metricas_agrupadas.pickup_w: W
      fct_metricas_agrupadas.pickup_1_w: 1W
      fct_metricas_agrupadas.pickup_2_w: 2W
      fct_metricas_agrupadas.pickup_3_w: 3W
      fct_metricas_agrupadas.pickup_4_w: 4W
      var_revenue: Var.
      dim_portfolio.updated_date: Updated
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: between, value: [0, 0.3], background_color: '',
        font_color: "#559C03", color_application: {collection_id: legacy, palette_id: legacy_sequential3,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [var_pick_up_d,
          var_pick_up_w, var_pick_up_1w, var_pick_up_2w, var_pick_up_3w, var_pick_up_4w,
          fct_metricas_agrupadas.pickup_d, fct_metricas_agrupadas.pickup_w, fct_metricas_agrupadas.pickup_1_w,
          fct_metricas_agrupadas.pickup_2_w, fct_metricas_agrupadas.pickup_3_w, fct_metricas_agrupadas.pickup_4_w]},
      {type: between, value: [-0.3, 0], background_color: '', font_color: "#B23305",
        color_application: {collection_id: legacy, palette_id: legacy_sequential3,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [var_pick_up_d,
          var_pick_up_w, var_pick_up_1w, var_pick_up_2w, var_pick_up_3w, var_pick_up_4w,
          fct_metricas_agrupadas.pickup_d, fct_metricas_agrupadas.pickup_w, fct_metricas_agrupadas.pickup_1_w,
          fct_metricas_agrupadas.pickup_2_w, fct_metricas_agrupadas.pickup_3_w, fct_metricas_agrupadas.pickup_4_w]},
      {type: greater than, value: 0.3, background_color: "#559C03", font_color: !!null '',
        color_application: {collection_id: legacy, palette_id: legacy_sequential3,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [var_pick_up_d,
          var_pick_up_w, var_pick_up_1w, var_pick_up_2w, var_pick_up_3w, var_pick_up_4w,
          fct_metricas_agrupadas.pickup_d, fct_metricas_agrupadas.pickup_w, fct_metricas_agrupadas.pickup_1_w,
          fct_metricas_agrupadas.pickup_2_w, fct_metricas_agrupadas.pickup_3_w, fct_metricas_agrupadas.pickup_4_w]},
      {type: less than, value: -0.3, background_color: "#B23305", font_color: !!null '',
        color_application: {collection_id: legacy, palette_id: legacy_sequential3,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [var_pick_up_d,
          var_pick_up_w, var_pick_up_1w, var_pick_up_2w, var_pick_up_3w, var_pick_up_4w,
          fct_metricas_agrupadas.pickup_d, fct_metricas_agrupadas.pickup_w, fct_metricas_agrupadas.pickup_1_w,
          fct_metricas_agrupadas.pickup_2_w, fct_metricas_agrupadas.pickup_3_w, fct_metricas_agrupadas.pickup_4_w]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: table
    series_types: {}
    hidden_fields: [fct_metricas_agrupadas.sum_i_habpen_mes, fct_metricas_agrupadas.rooms_occupancy,
      fct_metricas_agrupadas.adr, q1_fct_metricas_agrupadas.adr, q1_fct_metricas_agrupadas.budget,
      q1_fct_metricas_agrupadas.rooms_occupancy, q1_fct_metricas_agrupadas.pickup_d,
      q1_fct_metricas_agrupadas.pickup_w, q1_fct_metricas_agrupadas.pickup_1_w, q1_fct_metricas_agrupadas.pickup_2_w,
      q1_fct_metricas_agrupadas.pickup_3_w, q1_fct_metricas_agrupadas.pickup_4_w,
      var_adr]
    hidden_pivots: {}
    sorts: [dim_portfolio.id_hotel]
    dynamic_fields: [{category: table_calculation, expression: "${fct_metricas_agrupadas.sum_i_habpen}-${q1_fct_metricas_agrupadas.sum_i_habpen}",
        label: Var Revenue, value_format: !!null '', value_format_name: decimal_1,
        _kind_hint: measure, table_calculation: var_revenue, _type_hint: number},
      {category: table_calculation, expression: "${fct_metricas_agrupadas.rooms_occupancy}-${q1_fct_metricas_agrupadas.rooms_occupancy}",
        label: Var Occupancy, value_format: 0.0%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: var_occupancy, _type_hint: number}, {category: table_calculation,
        expression: "${fct_metricas_agrupadas.adr}-${q1_fct_metricas_agrupadas.adr}",
        label: Var ADR, value_format: 0.0%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: var_adr, _type_hint: number}, {category: table_calculation,
        expression: "${fct_metricas_agrupadas.pickup_d}-${q1_fct_metricas_agrupadas.pickup_d}",
        label: Var. Pick Up D, value_format: 0.0%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: var_pick_up_d, _type_hint: number}, {category: table_calculation,
        expression: "${fct_metricas_agrupadas.pickup_w}-${q1_fct_metricas_agrupadas.pickup_w}",
        label: Var. Pick Up W, value_format: 0.0%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: var_pick_up_w, _type_hint: number}, {category: table_calculation,
        expression: "${fct_metricas_agrupadas.pickup_1_w}-${q1_fct_metricas_agrupadas.pickup_1_w}",
        label: Var. Pick Up 1W, value_format: 0.0%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: var_pick_up_1w, _type_hint: number}, {category: table_calculation,
        expression: "${fct_metricas_agrupadas.pickup_2_w}-${q1_fct_metricas_agrupadas.pickup_2_w}",
        label: Var. Pick Up 2W, value_format: 0.0%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: var_pick_up_2w, _type_hint: number}, {category: table_calculation,
        expression: "${fct_metricas_agrupadas.pickup_3_w}-${q1_fct_metricas_agrupadas.pickup_3_w}",
        label: Var. Pick Up 3W, value_format: 0.0%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: var_pick_up_3w, _type_hint: number}, {category: table_calculation,
        expression: "${fct_metricas_agrupadas.pickup_4_w}-${q1_fct_metricas_agrupadas.pickup_4_w}",
        label: Var. Pick Up 4W, value_format: 0.0%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: var_pick_up_4w, _type_hint: number}, {category: table_calculation,
        expression: "case(\n when(is_null(${fct_metricas_agrupadas.adr}/${q1_fct_metricas_agrupadas.adr}),null),\n\
          \ (${fct_metricas_agrupadas.adr}/${q1_fct_metricas_agrupadas.adr})-1)",
        label: "%Var. ADR", value_format: 0.0%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: var_adr_1, _type_hint: number}]
    listen:
    - Anio Actual: dim_tiempo_mes.anio_actual
      Mes Actual: dim_tiempo_mes.mes_actual
    - Mes Actual: dim_tiempo_mes.mes_actual
      Compared Year: dim_anio_comparado.anio_actual
    row: 0
    col: 0
    width: 24
    height: 10
  filters:
  - name: Anio Actual
    title: Anio Actual
    type: field_filter
    default_value: Current
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: BoB_Base
    explore: Bob_Base
    listens_to_filters: []
    field: dim_tiempo_mes.anio_actual
  - name: Mes Actual
    title: Mes Actual
    type: field_filter
    default_value: Current
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: BoB_Base
    explore: Bob_Base
    listens_to_filters: []
    field: dim_tiempo_mes.mes_actual
  - name: Compared Year
    title: Compared Year
    type: field_filter
    default_value: Previous Year
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: BoB_Comparado
    explore: Bob_Comparado
    listens_to_filters: []
    field: dim_anio_comparado.anio_actual
