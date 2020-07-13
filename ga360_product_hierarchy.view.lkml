view: ga360_product_hierarchy {
  sql_table_name: `jjt-consumerdatalake-bigquery.eco_ga360_dev.ga360_product_hierarchy`
    ;;

  dimension: dimension60 {
    label: "Country"
    type: string
    sql: ${TABLE}.dimension60 ;;
    drill_fields: [dimension61]
  }

  dimension: dimension61 {
    # label: "State"
    type: string
    sql: ${TABLE}.dimension61 ;;
    drill_fields: [dimension62]
  }

  dimension: dimension62 {
    type: string
    sql: ${TABLE}.dimension62 ;;
    drill_fields: [dimension63]
  }

  dimension: dimension63 {
    type: string
    sql: ${TABLE}.dimension63 ;;
    drill_fields: [dimension64]
  }

  dimension: dimension64 {
    type: string
    sql: ${TABLE}.dimension64 ;;
    drill_fields: [dimension65]
  }

  dimension: dimension65 {
    type: string
    sql: ${TABLE}.dimension65 ;;
    drill_fields: [dimension66]
  }

  dimension: dimension66 {
    type: string
    sql: ${TABLE}.dimension66 ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.productBrand ;;
    drill_fields: [product_category_hierarchy, dimension60]
  }

  dimension: product_category_hierarchy {
    type: string
    sql: ${TABLE}.productCategoryHierarchy ;;
    drill_fields: [product_brand]
  }

  dimension: product_sku {
    primary_key: yes
    type: string
    sql: ${TABLE}.productSku ;;
  }

  dimension: product_variant {
    type: string
    sql: ${TABLE}.productVariant ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
