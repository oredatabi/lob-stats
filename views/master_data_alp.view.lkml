view: master_data_alp {
  sql_table_name: `JiraReport.master_data_alp` ;;

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
  dimension: is_user_active {
    type: yesno
    sql: ${TABLE}.isUserActive ;;
  }
  dimension: is_utilized {
    type: yesno
    sql: ${TABLE}.is_utilized ;;
  }
  dimension: issue_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.issueId ;;
  }
  dimension: member_name {
    type: string
    sql: ${TABLE}.memberName ;;
  }
  dimension: project_key {
    type: string
    sql: ${TABLE}.projectKey ;;
  }
  dimension: project_name {
    type: string
    sql: ${TABLE}.projectName ;;
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
  dimension: team_name {
    type: string
    sql: ${TABLE}.teamName ;;
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
  dimension_group: user_join {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.userJoinDate ;;
  }
  measure: count {
    type: count
    drill_fields: [team_name, member_name, project_name, issues.issue_id]
  }
}
