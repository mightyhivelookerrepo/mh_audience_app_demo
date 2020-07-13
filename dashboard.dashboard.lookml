- dashboard: ga360_canada_audience_builder
  title: GA360 Canada Audience Builder
  layout: newspaper
  elements:
  - title: Unique Visitors, Last 7 Days
    name: Unique Visitors, Last 7 Days
    model: ga360
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Existing Audience (AND): audience_selector.audience
      Host Name (Site or property a user has visited): hits_page.hostName
      User Type (includes both by default): ga_sessions.usertype
      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Unique Visitors, Last 30 Days
    name: Unique Visitors, Last 30 Days
    model: ga360
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 30 days ago for 30 days
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Existing Audience (AND): audience_selector.audience
      Host Name (Site or property a user has visited): hits_page.hostName
      User Type (includes both by default): ga_sessions.usertype
      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
    row: 0
    col: 6
    width: 5
    height: 4
  - title: Unique Visitors, Last 365 Days
    name: Unique Visitors, Last 365 Days
    model: ga360
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 365 days ago for 365 days
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Existing Audience (AND): audience_selector.audience
      Host Name (Site or property a user has visited): hits_page.hostName
      User Type (includes both by default): ga_sessions.usertype
      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
    row: 0
    col: 11
    width: 5
    height: 4
  - title: Stats over Time
    name: Stats over Time
    model: ga360
    explore: ga_sessions
    type: looker_line
    fields: [ga_sessions.unique_visitors, ga_sessions.partition_week, totals.timeonsite_average_per_session,
      totals.page_views_session]
    fill_fields: [ga_sessions.partition_week]
    filters:
      ga_sessions.partition_date: 10 weeks ago for 10 weeks
    sorts: [ga_sessions.partition_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_sessions.unique_visitors,
            id: ga_sessions.unique_visitors, name: Unique Visitors}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: totals.page_views_session,
            id: totals.page_views_session, name: PageViews Per Session}], showLabels: false,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: totals.timeonsite_average_per_session,
            id: totals.timeonsite_average_per_session, name: Time On Site Average
              Per Session}], showLabels: false, showValues: false, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [totals.page_views_session]
    series_types:
      ga_sessions.unique_visitors: column
    series_labels:
      totals.timeonsite_average_per_session: Time per Session
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Existing Audience (AND): audience_selector.audience
      Host Name (Site or property a user has visited): hits_page.hostName
      User Type (includes both by default): ga_sessions.usertype
      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
    row: 4
    col: 0
    width: 16
    height: 7
  - title: Sessions by Day (Last 7 Days)
    name: Sessions by Day (Last 7 Days)
    model: ga360
    explore: ga_sessions
    type: looker_pie
    fields: [ga_sessions.partition_day_of_week, ga_sessions.session_count]
    fill_fields: [ga_sessions.partition_day_of_week]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days
    sorts: [ga_sessions.session_count desc, ga_sessions.partition_day_of_week]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_sessions.unique_visitors,
            id: ga_sessions.unique_visitors, name: Unique Visitors}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: totals.page_views_session,
            id: totals.page_views_session, name: PageViews Per Session}], showLabels: false,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: totals.timeonsite_average_per_session,
            id: totals.timeonsite_average_per_session, name: Time On Site Average
              Per Session}], showLabels: false, showValues: false, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [totals.page_views_session]
    series_types: {}
    series_labels:
      totals.timeonsite_average_per_session: Time per Session
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Existing Audience (AND): audience_selector.audience
      Host Name (Site or property a user has visited): hits_page.hostName
      User Type (includes both by default): ga_sessions.usertype
      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
    row: 20
    col: 9
    width: 8
    height: 11
  - title: Top Host Names (last 7 days)
    name: Top Host Names (last 7 days)
    model: ga360
    explore: ga_sessions
    type: looker_grid
    fields: [ga_sessions.session_count, hits_page.hostName, totals.timeonsite_average_per_session]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days
    sorts: [ga_sessions.session_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      totals.timeonsite_average_per_session: Time per Session
    series_cell_visualizations:
      ga_sessions.session_count:
        is_active: true
      totals.timeonsite_average_per_session:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_sessions.unique_visitors,
            id: ga_sessions.unique_visitors, name: Unique Visitors}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: totals.page_views_session,
            id: totals.page_views_session, name: PageViews Per Session}], showLabels: false,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: totals.timeonsite_average_per_session,
            id: totals.timeonsite_average_per_session, name: Time On Site Average
              Per Session}], showLabels: false, showValues: false, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [totals.page_views_session]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    listen:
      Existing Audience (AND): audience_selector.audience
      Host Name (Site or property a user has visited): hits_page.hostName
      User Type (includes both by default): ga_sessions.usertype
      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
    row: 11
    col: 0
    width: 12
    height: 9
  - title: Top Regions
    name: Top Regions
    model: ga360
    explore: ga_sessions
    type: looker_grid
    fields: [ga_sessions.session_count, totals.timeonsite_average_per_session, geoNetwork.region]
    filters:
      ga_sessions.partition_date: 14 days ago for 14 days
    sorts: [ga_sessions.session_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      totals.timeonsite_average_per_session: Time per Session
      geoNetwork.region: Region
    series_cell_visualizations:
      ga_sessions.session_count:
        is_active: true
      totals.timeonsite_average_per_session:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_sessions.unique_visitors,
            id: ga_sessions.unique_visitors, name: Unique Visitors}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: totals.page_views_session,
            id: totals.page_views_session, name: PageViews Per Session}], showLabels: false,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: totals.timeonsite_average_per_session,
            id: totals.timeonsite_average_per_session, name: Time On Site Average
              Per Session}], showLabels: false, showValues: false, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [totals.page_views_session]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    listen:
      Existing Audience (AND): audience_selector.audience
      Host Name (Site or property a user has visited): hits_page.hostName
      User Type (includes both by default): ga_sessions.usertype
      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
    row: 11
    col: 12
    width: 12
    height: 9
  - title: New vs Returning Visitors
    name: New vs Returning Visitors
    model: ga360
    explore: ga_sessions
    type: looker_pie
    fields: [ga_sessions.session_count, ga_sessions.usertype]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days
      audience_selector.audience: ''
      ga360_product_hierarchy.product_brand: ''
    sorts: [ga_sessions.session_count desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_sessions.unique_visitors,
            id: ga_sessions.unique_visitors, name: Unique Visitors}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: totals.page_views_session,
            id: totals.page_views_session, name: PageViews Per Session}], showLabels: false,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: totals.timeonsite_average_per_session,
            id: totals.timeonsite_average_per_session, name: Time On Site Average
              Per Session}], showLabels: false, showValues: false, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [totals.page_views_session]
    series_types: {}
    series_labels:
      totals.timeonsite_average_per_session: Time per Session
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Host Name (Site or property a user has visited): hits_page.hostName
      User Type (includes both by default): ga_sessions.usertype
      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
    row: 0
    col: 16
    width: 8
    height: 6
  filters:
  - name: Existing Audience (OR)
    title: Existing Audience (OR)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: audience_selector.audience
  - name: Existing Audience (AND)
    title: Existing Audience (AND)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: audience_selector_and.audience
  - name: Host Name (Site or property a user has visited)
    title: Host Name (Site or property a user has visited)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: hits_page.hostName
  - name: User Type (includes both by default)
    title: User Type ("New User" or "Returning User" - Case senstitive)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.usertype
  - name: Medium (Type of referral that brought in traffic)
    title: Medium (Type of referral that brought in traffic)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - affiliate
      - banner
      - cpc
      - cpm
      - organic
      - "(none)"
      - referral
      - Social
      - Display
      - Email
      - Video
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: trafficSource.medium
  - name: Source (Site that brought in traffic)
    title: Source (Site that brought in traffic)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
      options:
      - "(direct)"
      - google
      - dbm
      - Facebook
      - bing
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: trafficSource.source
  - name: Page Path
    title: Page Path
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: hits_page.pagePath
  - name: Event Category
    title: Event Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - click tracking
      - coupon
      - download link
      - ecommerce
      - engagement
      - eretailer
      - faq
      - ingredients
      - internal search
      - link tracking
      - log in
      - log out
      - outbound link
      - poll
      - product rating
      - registration
      - social
      - undefined
      - video
      - wtb 2.0
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: hits_eventInfo.eventCategory
  - name: Time on Site (in seconds)
    title: Time on Site (in seconds)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: totals.timeonsite
  - name: Product GFO (cd61)
    title: Dim61
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
      options:
      - Essential Health
      - Self Care
      - Skin Health
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: ga360_product_hierarchy.dimension61
  - name: Product Sub Brand (cd62)
    title: Dim62
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: ga360_product_hierarchy.dimension62
  - name: Product Need State (cd63)
    title: Dim63
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: ga360_product_hierarchy.dimension63
  - name: Product Sub Category (cd64)
    title: Dim64
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: ga360_product_hierarchy.dimension64
  - name: Product Segment (cd65)
    title: Dim65
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: ga360_product_hierarchy.dimension65
  - name: Product Sub Segment (cd66)
    title: Dim66
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga360
    explore: ga_sessions
    listens_to_filters: []
    field: ga360_product_hierarchy.dimension66
