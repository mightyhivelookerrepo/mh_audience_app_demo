view: user_list_mikey_poc {
  sql_table_name: `ga-cross-profile-settings.jnj_poc.user_list_mikey_poc`
    ;;

  dimension: audience_id {
    type: string
    sql: ${TABLE}.audience_id ;;
  }

  dimension: audience_name {
    type: string
    sql: ${TABLE}.audience_name ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.clientId ;;
  }

  measure: count {
    type: count
    drill_fields: [audience_name]
  }
}
