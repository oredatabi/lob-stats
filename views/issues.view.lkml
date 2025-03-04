view: issues {
  sql_table_name: `JiraReport.issues` ;;
  drill_fields: [issue_id]

  dimension: issue_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.issueId ;;
  }
  dimension: assignee {
    type: string
    sql: ${TABLE}.assignee ;;
  }
  dimension: issue_key {
    type: string
    sql: ${TABLE}.issueKey ;;
  }
  dimension: project_key {
    type: string
    sql: ${TABLE}.projectKey ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	issue_id,
	issue_lob.count,
	issue_labels.count,
	master_data.count,
	history.count,
	master_data_alp.count,
	v_issue_labels.count,
	worklog_v2.count
	]
  }

}
