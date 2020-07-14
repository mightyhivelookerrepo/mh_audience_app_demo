view: audience_meta_data {
    sql_table_name: `ga-cross-profile-settings.jnj_poc.audience_list`
      ;;

    dimension: account_id {
      label: "Account Id"
      type: string
      sql: ${TABLE}.account_id ;;
    }

    dimension: account {
      # label: "State"
      type: string
      sql: ${TABLE}.account ;;
    }

    dimension: property_id {
      type: string
      sql: ${TABLE}.property_id ;;
    }

    dimension: property {
      type: string
      sql: ${TABLE}.property ;;
    }

    dimension: view_id {
      type: string
      sql: ${TABLE}.view_id ;;
    }

    dimension: view {
      type: string
      sql: ${TABLE}.view ;;
    }

    dimension: audience_id {
      type: string
      sql: ${TABLE}.audience_id ;;
    }

    dimension: audience {
      type: string
      sql: ${TABLE}.audience ;;
    }

    dimension: audience_type {
      type: string
      sql: ${TABLE}.audience_type ;;
    }

    dimension: segment {
      type: string
      sql: ${TABLE}.segment ;;
    }

    dimension: google_ads_links {
      type: string
      sql: ${TABLE}.google_ads_links ;;
    }

  dimension: dv360_links {
    type: string
    sql: ${TABLE}.dv360_links ;;
  }


  dimension: mcc_links {
    type: string
    sql: ${TABLE}.mcc_links ;;
  }

  dimension: lookback_days {
    type: string
    sql: ${TABLE}.lookback_days ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: last_modified {
    type: string
    sql: ${TABLE}.last_modified ;;
  }

  dimension: sql {
    type: string
    sql: ${TABLE}.sql ;;
  }

  dimension: filter_body {
    type: string
    sql: ${TABLE}.filter_body ;;
  }

    measure: count {
      type: count
      drill_fields: []
    }
  }
