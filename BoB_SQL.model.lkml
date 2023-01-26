connection: "snowflake_barcelo"

include: "/derived_views/vista_bob_sql.view.lkml"                # include all views in the views/ folder in this project
include: "/views/CORE/dim_estructura_geografica.view.lkml"
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: vista_bob_sql {
  from: vista_bob_sql
}
