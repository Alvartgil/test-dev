include: "/derived_views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/views/CORE/dim_estructura_geografica.view.lkml"
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: bob_metricas {
  from: vista_bob_base_metricas
  join: comparado {
    from: vista_bob_comparado
    type: left_outer
    relationship: many_to_one
    sql_on: ${bob_metricas.id_hotel} = ${comparado.id_hotel}
      AND ${bob_metricas.mes} = ${comparado.mes};;
  }
  join: estructura_geografica {
    from: dim_estructura_geografica
    type: left_outer
    relationship: many_to_one
    sql_on: ${bob_metricas.id_hotel} = ${estructura_geografica.id_hotel};;
  }

}
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
