view: jira_profiling {
  sql_table_name: `JiraReport.JiraProfiling` ;;

  dimension: average_string_length {
    type: number
    description: "The average length of string values in this column."
    sql: ${TABLE}.average_string_length ;;
  }
  dimension: average_value {
    type: number
    description: "The average value of values in this column."
    sql: ${TABLE}.average_value ;;
  }
  dimension: column_mode {
    type: string
    description: "The column mode in the source table, e.g. nullable, repeated, required."
    sql: ${TABLE}.column_mode ;;
  }
  dimension: column_name {
    type: string
    description: "The column name in the source table."
    sql: ${TABLE}.column_name ;;
  }
  dimension: column_type {
    type: string
    description: "The column type in the source table."
    sql: ${TABLE}.column_type ;;
  }
  dimension: data_profile_job_configuration {
    type: string
    description: "Data profile job configuration."
    sql: ${TABLE}.data_profile_job_configuration ;;
  }
  dimension: data_profile_job_id {
    type: string
    description: "Data profile scan job id."
    sql: ${TABLE}.data_profile_job_id ;;
  }
  dimension: data_profile_scan__data_scan_id {
    type: string
    description: "The data scan id."
    sql: ${TABLE}.data_profile_scan.data_scan_id ;;
    group_label: "Data Profile Scan"
    group_item_label: "Data Scan ID"
  }
  dimension: data_profile_scan__location {
    type: string
    description: "The location of the data scan."
    sql: ${TABLE}.data_profile_scan.location ;;
    group_label: "Data Profile Scan"
    group_item_label: "Location"
  }
  dimension: data_profile_scan__project_id {
    type: string
    description: "The project id of the data scan."
    sql: ${TABLE}.data_profile_scan.project_id ;;
    group_label: "Data Profile Scan"
    group_item_label: "Project ID"
  }
  dimension: data_profile_scan__resource_name {
    type: string
    description: "The full resource name of the data scan."
    sql: ${TABLE}.data_profile_scan.resource_name ;;
    group_label: "Data Profile Scan"
    group_item_label: "Resource Name"
  }
  dimension: data_source__dataplex_entity_id {
    type: string
    description: "Data source - the entity id of the source dataplex entity."
    sql: ${TABLE}.data_source.dataplex_entity_id ;;
    group_label: "Data Source"
    group_item_label: "Dataplex Entity ID"
  }
  dimension: data_source__dataplex_entity_project_id {
    type: string
    description: "Data source - the project id of the source dataplex entity."
    sql: ${TABLE}.data_source.dataplex_entity_project_id ;;
    group_label: "Data Source"
    group_item_label: "Dataplex Entity Project ID"
  }
  dimension: data_source__dataplex_entity_project_number {
    type: number
    description: "Data source - the project number of the source dataplex entity."
    sql: ${TABLE}.data_source.dataplex_entity_project_number ;;
    group_label: "Data Source"
    group_item_label: "Dataplex Entity Project Number"
  }
  dimension: data_source__dataplex_lake_id {
    type: string
    description: "Data source - the lake id of the source dataplex entity."
    sql: ${TABLE}.data_source.dataplex_lake_id ;;
    group_label: "Data Source"
    group_item_label: "Dataplex Lake ID"
  }
  dimension: data_source__dataplex_zone_id {
    type: string
    description: "Data source - the zone id of the source dataplex entity."
    sql: ${TABLE}.data_source.dataplex_zone_id ;;
    group_label: "Data Source"
    group_item_label: "Dataplex Zone ID"
  }
  dimension: data_source__dataset_id {
    type: string
    description: "Data source - the dataset id of the source BigQuery table."
    sql: ${TABLE}.data_source.dataset_id ;;
    group_label: "Data Source"
    group_item_label: "Dataset ID"
  }
  dimension: data_source__resource_name {
    type: string
    description: "The full resource name of the data source."
    sql: ${TABLE}.data_source.resource_name ;;
    group_label: "Data Source"
    group_item_label: "Resource Name"
  }
  dimension: data_source__table_id {
    type: string
    description: "Data source - the table id of the source BigQuery table."
    sql: ${TABLE}.data_source.table_id ;;
    group_label: "Data Source"
    group_item_label: "Table ID"
  }
  dimension: data_source__table_project_id {
    type: string
    description: "Data source - the project id of the source BigQuery table."
    sql: ${TABLE}.data_source.table_project_id ;;
    group_label: "Data Source"
    group_item_label: "Table Project ID"
  }
  dimension: data_source__table_project_number {
    type: number
    description: "Data source - the project number of the source BigQuery table."
    sql: ${TABLE}.data_source.table_project_number ;;
    group_label: "Data Source"
    group_item_label: "Table Project Number"
  }
  dimension_group: job_end {
    type: time
    description: "The end time of the data scan job."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.job_end_time ;;
  }
  dimension: job_labels {
    type: string
    description: "The data scan job labels."
    sql: ${TABLE}.job_labels ;;
  }
  dimension: job_rows_scanned {
    type: number
    description: "The number of rows that have been scanned during this data scan job."
    sql: ${TABLE}.job_rows_scanned ;;
  }
  dimension_group: job_start {
    type: time
    description: "The start time of the data scan job."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.job_start_time ;;
  }
  dimension: max_string_length {
    type: number
    description: "The maximum length of string values in this column."
    sql: ${TABLE}.max_string_length ;;
  }
  dimension: max_value {
    type: number
    description: "The maximum value of values in this column."
    sql: ${TABLE}.max_value ;;
  }
  dimension: min_string_length {
    type: number
    description: "The minimum length of string values in this column."
    sql: ${TABLE}.min_string_length ;;
  }
  dimension: min_value {
    type: number
    description: "The minimum value of values in this column."
    sql: ${TABLE}.min_value ;;
  }
  dimension: percent_null {
    type: number
    description: "The percentage of values in source table that is null."
    sql: ${TABLE}.percent_null ;;
  }
  dimension: percent_unique {
    type: number
    description: "The percentage of values in source table that is unique."
    sql: ${TABLE}.percent_unique ;;
  }
  dimension: quartile_lower {
    type: number
    description: "The lower quartile of values in this column."
    sql: ${TABLE}.quartile_lower ;;
  }
  dimension: quartile_median {
    type: number
    description: "The median quartile of values in this column."
    sql: ${TABLE}.quartile_median ;;
  }
  dimension: quartile_upper {
    type: number
    description: "The upper quartile of values in this column."
    sql: ${TABLE}.quartile_upper ;;
  }
  dimension: standard_deviation {
    type: number
    description: "The standard deviation of values in this column."
    sql: ${TABLE}.standard_deviation ;;
  }
  dimension: top_n {
    hidden: yes
    sql: ${TABLE}.top_n ;;
  }
  measure: count {
    type: count
    drill_fields: [column_name, data_source__resource_name, data_profile_scan__resource_name]
  }
}

view: jira_profiling__top_n {

  dimension: count_jira_profiling__top_n {
    type: number
    description: "Top N - count of the corresponding value in the scanned data."
    sql: count ;;
  }
  dimension: jira_profiling__top_n {
    type: string
    description: "The top n values of scanned data."
    hidden: yes
    sql: jira_profiling__top_n ;;
  }
  dimension: percent {
    type: number
    description: "Top N - percentage of the corresponding value in the scanned data."
    sql: percent ;;
  }
  dimension: value {
    type: string
    description: "Top N - the specific value."
    sql: value ;;
  }
}
