view: worklog_v2 {
  sql_table_name: `JiraReport.worklog_v2` ;;

  dimension: author_account_id {
    type: string
    sql: ${TABLE}.authorAccountId ;;
  }
  dimension: billable_seconds {
    type: number
    sql: ${TABLE}.billableSeconds ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdAt ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: issue_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.issueId ;;
  }
  dimension_group: start_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startDate ;;
  }
  dimension: start_time {
    type: string
    sql: ${TABLE}.startTime ;;
  }
  dimension: tempo_worklog_id {
    type: string
    sql: ${TABLE}.tempoWorklogId ;;
  }
  dimension: time_spent_seconds {
    type: number
    sql: ${TABLE}.timeSpentSeconds ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updatedAt ;;
  }
  measure: count {
    type: count
    drill_fields: [issues.issue_id]
  }
}
