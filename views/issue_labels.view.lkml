view: issue_labels {
  sql_table_name: `JiraReport.issue_labels` ;;

  dimension: issue_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.issueId ;;
  }
  dimension: issue_key {
    type: string
    sql: ${TABLE}.issueKey ;;
  }
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }
  dimension: total_label_count {
    type: number
    sql: ${TABLE}.totalLabelCount ;;
  }
  measure: count {
    type: count
    drill_fields: [issues.issue_id]
  }
}
