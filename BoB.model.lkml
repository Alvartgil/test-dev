include: "/derived_views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: bob {
  from: vista_bob_base
   join: comparado {
    from: vista_bob_comparado
     type: left_outer
     relationship: many_to_one
     sql_on: ${bob.id_hotel} = ${comparado.id_hotel} ;;
}}
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
