view: vista_bob_sql {
  derived_table: {
    sql:
WITH vista_bob_base AS (SELECT
    dim_portfolio."ID_HOTEL"  AS id_hotel,
    dim_portfolio."FECHA_CARGA"  AS updated_date,
    fct_metricas_agrupadas."IS_COMPARABLE"  AS is_comparable,
    dim_tiempo_mes."ANIO_ACTUAL"  AS anio_actual,
    dim_tiempo_mes."MES_ACTUAL"  AS mes_actual,
    dim_tiempo_mes."MES"  AS mes,
    COALESCE(SUM(( fct_metricas_agrupadas."I_HABPEN" )), 0) AS sum_i_habpen,
    COALESCE(SUM(( fct_metricas_agrupadas."I_HABPEN_MES" )), 0) AS sum_i_habpen_mes,
    COALESCE(SUM(( fct_metricas_agrupadas."I_TOTALES_BUDGET" )), 0) AS budget,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."NUM_HABITACIONES"  ),( fct_metricas_agrupadas."HABITACIONES_CAPACIDAD"  ))), 0) AS rooms_occupancy,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."ADR_NUMERADOR"  ),( fct_metricas_agrupadas."ADR_DENOMINADOR"  ))), 0) AS adr,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_D"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_D"  ))), 0) AS pickup_d,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_W"  ))), 0) AS pickup_w,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN_PICKUP_W"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_1_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_1_W"  ))), 0) AS pickup_1_w,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN_PICKUP_1_W"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_2_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_2_W"  ))), 0) AS pickup_2_w,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN_PICKUP_2_W"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_3_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_3_W"  ))), 0) AS pickup_3_w,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN_PICKUP_3_W"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_4_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_4_W"  ))), 0) AS pickup_4_w
FROM "CORE"."FCT_METRICAS_AGRUPADAS"
     AS fct_metricas_agrupadas
INNER JOIN "CORE"."DIM_PORTFOLIO"
     AS dim_portfolio ON (fct_metricas_agrupadas."ID_HOTEL") = (dim_portfolio."ID_HOTEL")
INNER JOIN "AUXILIARY"."AUX_DATES_PBI"
     AS aux_dates_pbi ON (fct_metricas_agrupadas."ID_BASE") = (aux_dates_pbi."ID_BASE")
INNER JOIN "CORE"."DIM_TIEMPO_FORECAST"
     AS dim_tiempo_forecast ON (TO_CHAR(TO_DATE(aux_dates_pbi."FECHA_FORECAST_SELECCIONADA" ), 'YYYY-MM-DD')) = (TO_CHAR(TO_DATE(dim_tiempo_forecast."FECHA_FORECAST" ), 'YYYY-MM-DD'))
INNER JOIN "CORE"."DIM_TIEMPO_MES"
     AS dim_tiempo_mes ON (fct_metricas_agrupadas."ANIO_MES") = (dim_tiempo_mes."ANIO_MES")
WHERE (dim_tiempo_forecast."FECHA_FORECAST_ACTUAL" ) = 'Current'
GROUP BY
    1,2,3,4,5,6),

  vista_bob_comparado AS (SELECT
    dim_portfolio."ID_HOTEL"  AS id_hotel,
    fct_metricas_agrupadas."IS_COMPARABLE"  AS is_comparable,
    dim_tiempo_mes."ANIO_ACTUAL"  AS anio_actual,
    dim_tiempo_mes."MES_ACTUAL"  AS mes_actual,
    dim_tiempo_mes."MES"  AS mes,
    COALESCE(SUM(( fct_metricas_agrupadas."I_HABPEN" )), 0) AS sum_i_habpen,
    COALESCE(SUM(( fct_metricas_agrupadas."I_HABPEN_MES" )), 0) AS sum_i_habpen_mes,
    COALESCE(SUM(( fct_metricas_agrupadas."I_TOTALES_BUDGET" )), 0) AS budget,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."ADR_NUMERADOR"  ),( fct_metricas_agrupadas."ADR_DENOMINADOR"  ))), 0) AS adr,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."NUM_HABITACIONES"  ),( fct_metricas_agrupadas."HABITACIONES_CAPACIDAD"  ))), 0) AS rooms_occupancy,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_D"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_D"  ))), 0) AS pickup_d,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_W"  ))), 0) AS pickup_w,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN_PICKUP_W"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_1_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_1_W"  ))), 0) AS pickup_1_w,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN_PICKUP_1_W"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_2_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_2_W"  ))), 0) AS pickup_2_w,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN_PICKUP_2_W"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_3_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_3_W"  ))), 0) AS pickup_3_w,
    COALESCE(SUM(DIV0(( fct_metricas_agrupadas."I_HABPEN_PICKUP_3_W"  )-( fct_metricas_agrupadas."I_HABPEN_PICKUP_4_W"  ),( fct_metricas_agrupadas."I_HABPEN_PICKUP_4_W"  ))), 0) AS pickup_4_w
FROM "CORE"."FCT_METRICAS_AGRUPADAS"
     AS fct_metricas_agrupadas
INNER JOIN "CORE"."DIM_PORTFOLIO"
     AS dim_portfolio ON (fct_metricas_agrupadas."ID_HOTEL") = (dim_portfolio."ID_HOTEL")
INNER JOIN "AUXILIARY"."AUX_DATES_PBI_COMPARADO"
     AS aux_dates_pbi_comparado ON (fct_metricas_agrupadas."ID_COMPARADO") = (aux_dates_pbi_comparado."ID_COMPARADO")
INNER JOIN "CORE"."DIM_TIEMPO_FORECAST"
     AS dim_tiempo_forecast ON (TO_CHAR(TO_DATE(aux_dates_pbi_comparado."FECHA_FORECAST_SELECCIONADA" ), 'YYYY-MM-DD')) = (TO_CHAR(TO_DATE(dim_tiempo_forecast."FECHA_FORECAST" ), 'YYYY-MM-DD'))
INNER JOIN "CORE"."DIM_ANIO_COMPARADO"
     AS dim_anio_comparado ON (aux_dates_pbi_comparado."ANIO_COMPARADO") = (dim_anio_comparado."ANIO") AND
    (dim_anio_comparado."ANIO") = (fct_metricas_agrupadas."ANIO")
INNER JOIN "CORE"."DIM_TIEMPO_MES"
     AS dim_tiempo_mes ON (fct_metricas_agrupadas."MES") = (dim_tiempo_mes."MES") AND
    (dim_tiempo_mes."ANIO") = (dim_anio_comparado."ANIO")
WHERE (dim_tiempo_forecast."FECHA_FORECAST_ACTUAL" ) = 'Current'
GROUP BY 1,2,3,4,5)

SELECT
  bob_base.id_hotel AS id_hotel,
    estructura_geografica."DES_NIVEL3"  AS des_nivel3,
    estructura_geografica."DES_NIVEL4"  AS des_nivel4,
    bob_base.updated_date AS updated,
    bob_base.sum_i_habpen AS bob,
    bob_base.budget AS bud,
    bob_base.pickup_d AS d,
    bob_base.pickup_w AS w,
    bob_base.pickup_1_w AS p_1W,
    bob_base.pickup_2_w AS p_2W,
    bob_base.pickup_3_w AS p_3W,
    bob_base.pickup_4_w AS p_4W,
    comparado.sum_i_habpen AS bob_py,
    comparado.sum_i_habpen_mes AS py,
    bob_base.rooms_occupancy AS bob_base_rooms_occupancy,
    comparado.rooms_occupancy AS comparado_rooms_occupancy,
    comparado.pickup_d AS comparado_pickup_d,
    comparado.pickup_w AS comparado_pickup_w,
    comparado.pickup_1_w AS comparado_pickup_1_w,
    comparado.pickup_2_w AS comparado_pickup_2_w,
    comparado.pickup_3_w AS comparado_pickup_3_w,
    comparado.pickup_4_w AS comparado_pickup_4_w,
    bob_base.adr AS bob_base_adr,
    comparado.adr AS comparado_adr,
    COALESCE( bob_base.sum_i_habpen ,0) - COALESCE( comparado.sum_i_habpen ,0) AS var_,
    COALESCE( bob_base.rooms_occupancy ,0) - COALESCE( comparado.rooms_occupancy ,0) AS ocp_pp,
    COALESCE( bob_base.pickup_d ,0) - COALESCE( comparado.pickup_d ,0) AS var_pickup_d,
    COALESCE( bob_base.pickup_w ,0) - COALESCE( comparado.pickup_w ,0) AS var_pickup_w,
    COALESCE( bob_base.pickup_1_w ,0) - COALESCE( comparado.pickup_1_w ,0) AS var_pickup_1_w,
    COALESCE( bob_base.pickup_2_w ,0) - COALESCE( comparado.pickup_2_w ,0) AS var_pickup_2_w,
    COALESCE( bob_base.pickup_3_w ,0) - COALESCE( comparado.pickup_3_w ,0) AS var_pickup_3_w,
    COALESCE( bob_base.pickup_4_w ,0) - COALESCE( comparado.pickup_4_w ,0) AS var_pickup_4_w,
    CASE WHEN  bob_base.adr  is null or  comparado.adr  is null THEN null ELSE DIV0( bob_base.adr, comparado.adr )-1 END AS av_rate
FROM vista_bob_base AS bob_base
LEFT JOIN vista_bob_comparado AS comparado ON bob_base.id_hotel = comparado.id_hotel
      AND bob_base.mes = comparado.mes
LEFT JOIN "CORE"."DIM_ESTRUCTURA_GEOGRAFICA"
     AS estructura_geografica ON bob_base.id_hotel = (estructura_geografica."ID_HOTEL")
WHERE (bob_base.anio_actual) = 'Current' AND (bob_base.mes_actual) = 'Current' AND (comparado.anio_actual) = 'Previous Year'
GROUP BY
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24;;
  }


  dimension: id_hotel {
    type: number
  }

  dimension: des_nivel3 {
    type: string
  }

  dimension: des_nivel4 {
    type: string
  }

  dimension: updated {
    type: date

  }

  dimension: bob {
    type: number

  }

  dimension: bud {
    type: number

  }

  dimension: d {
    type: number
    value_format: "0.0%"
  }

  dimension: w {
    type: number
    value_format: "0.0%"
  }

  dimension: p_1W {
    type: number
    value_format: "0.0%"
  }

  dimension: p_2W {
    type: number
    value_format: "0.0%"
  }

  dimension: p_3W {
    type: number
    value_format: "0.0%"
  }

  dimension: p_4W {
    type: number
    value_format: "0.0%"
  }

  dimension: bob_py {
    type: number
  }

  dimension: py {
    type: number
  }

  dimension: var_ {
    type: number
  }

  dimension: ocp_pp {
    type: number
    value_format: "0.0%"
  }

  dimension: var_pickup_d {
    type: number
    value_format: "0.0%"
  }

  dimension: var_pickup_w {
    type: number
    value_format: "0.0%"
  }

  dimension: var_pickup_1_w {
    type: number
    value_format: "0.0%"
  }

  dimension: var_pickup_2_w {
    type: number
    value_format: "0.0%"
  }

  dimension: var_pickup_3_w {
    type: number
    value_format: "0.0%"
  }

  dimension: var_pickup_4_w {
    type: number
    value_format: "0.0%"
  }

  dimension: av_rate {
    type: number
    value_format: "0.0%"
  }

}
