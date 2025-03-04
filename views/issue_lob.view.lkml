view: issue_lob {
  sql_table_name: `JiraReport.issue_lob` ;;

  dimension: issue_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.issueId ;;
  }
  dimension: lob {
    type: string
    sql: ${TABLE}.lob ;;
  }
  measure: count {
    type: count
    drill_fields: [issues.issue_id]
  }
}
