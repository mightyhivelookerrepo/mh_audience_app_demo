
view: audience_selector {
  derived_table: {
    # datagroup_trigger: once_yearly
    sql:
          SELECT 'Aveeno Customers - New' as audience, * FROM ${aveeno_new.SQL_TABLE_NAME}
UNION ALL SELECT 'Tylenol - Returning Users' as audience, * FROM ${tylenol_returning.SQL_TABLE_NAME}
UNION ALL SELECT 'Test' as audience, * FROM ${test.SQL_TABLE_NAME}
    ;;
  }

  # parameter: audience_selection {
  #   suggest_explore: filter_test
  #   suggest_dimension: audience
  #   suggest_persist_for:"5 hours"
  # }
  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: concat(${audience},${fullvisitorID},cast(${partition_date} as string)) ;;
  }
  dimension: audience {}
  dimension: fullvisitorID { hidden: yes }
  dimension: partition_date {
    type: date
    hidden: yes
    sql: cast(${TABLE}.partition_date as date) ;;
  }
#   dimension: hostname { hidden: yes }
#   dimension: medium { hidden: yes }
#   dimension: source { hidden: yes type: string }
#   dimension: usertype { hidden: yes }
#   dimension: timeonsite { hidden: yes }
#   dimension: dim63 { hidden: yes }
#   dimension: dim66 { hidden: yes }
}

view: aveeno_new {
  derived_table: {
    # datagroup_trigger: once_yearly
    explore_source: ga_sessions {
      column: fullVisitorId {}
      column: partition_date {}
      filters: {
        field: ga_sessions.partition_date
        value: "7 days ago for 7 days"
      }
      filters: {
        field: first_page.hostName
        value: "%aveeno%"
      }
      filters: {
        field: ga_sessions.usertype
        value: "New User"
      }
    }
  }
}

view: tylenol_returning {
  derived_table: {
    # datagroup_trigger: once_yearly
    explore_source: ga_sessions {
      column: fullVisitorId {}
      column: partition_date {}
      filters: {
        field: ga_sessions.partition_date
        value: "7 days ago for 7 days"
      }
      filters: {
        field: first_page.hostName
        value: "%tylenol%"
      }
      filters: {
        field: ga_sessions.usertype
        value: "Returning User"
      }
    }
  }
}

view: test {
  derived_table: {
    # datagroup_trigger: once_yearly
    explore_source: ga_sessions {
      column: fullVisitorId {}
      column: partition_date {}
      filters: {
        field: ga_sessions.partition_date
        value: "7 days ago for 7 days"
      }
      filters: {
        field: first_page.hostName
        value: "%tylenol%"
      }
      filters: {
        field: ga_sessions.usertype
        value: "New User"
      }
    }
  }
}
