view: user_list {
  sql_table_name:
  (

  SELECT *, DATE(_PARTITIONTIME) AS date FROM `ga-cross-profile-settings.jnj_poc.user_list` AS user_list
  WHERE (((cast(_PARTITIONDATE as timestamp) ) >= ((TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -364 DAY)))
  AND (cast(_PARTITIONDATE as timestamp) ) < ((TIMESTAMP_ADD(TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -364 DAY), INTERVAL 365 DAY)))))
  ) ;;

  # `ga-cross-profile-settings.jnj_poc.user_list`;;

#   dimension_group: partition {
#     label: "Audience Start"
#     timeframes: [raw,second,hour_of_day,date,day_of_week,fiscal_quarter,week,month,year,month_name,month_num,week_of_year]
#     type: time
#     # sql: TIMESTAMP_ADD(TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'^\d\d\d\d\d\d\d\d'))), INTERVAL (date_diff(current_date(), cast('2017-08-01' as date), day)) DAY )  ;;
#     sql: ${TABLE}.date ;;
#     # sql: cast(${TABLE}._PARTITIONDATE as timestamp) ;;
#     # sql: TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'^\d\d\d\d\d\d\d\d'))) ;;
#   }

  dimension: partition_date {
    type: date
    sql: ${TABLE}.date ;;
  }

  dimension: clientId {
  type: string
  primary_key: yes
  sql: ${TABLE}.clientId ;;
}

dimension: audience_id {
  type: string
  sql: ${TABLE}.audience_id ;;
}

dimension: audience_name {
  type: string
  sql: ${TABLE}.property_id ;;
}

measure: count {
  type: count
  drill_fields: []
  }
}
