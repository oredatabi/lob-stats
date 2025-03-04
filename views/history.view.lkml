view: history {
  sql_table_name: `JiraReport.history` ;;

  dimension: author_account_id {
    type: string
    sql: ${TABLE}.authorAccountId ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created ;;
  }
  dimension: field {
    type: string
    sql: ${TABLE}.field ;;
  }
  dimension: field_id {
    type: string
    sql: ${TABLE}.fieldId ;;
  }
  dimension: field_type {
    type: string
    sql: ${TABLE}.fieldType ;;
  }
  dimension: from {
    type: string
    sql: ${TABLE}.`from` ;;
  }
  dimension: from_string {
    type: string
    sql: ${TABLE}.fromString ;;
  }
  dimension: issue_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.issueId ;;
  }
  dimension: issue_key {
    type: string
    sql: ${TABLE}.issueKey ;;
  }
  dimension: to {
    type: string
    sql: ${TABLE}.`to` ;;
  }
  dimension: to_string {
    type: string
    sql: ${TABLE}.toString ;;
  }
  measure: count {
    type: count
    drill_fields: [issues.issue_id]
  }
}
