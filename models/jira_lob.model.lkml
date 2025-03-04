connection: "oredata_big_data_looker_dataset"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: jira_lob_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: jira_lob_default_datagroup

explore: issue_lob {
  join: issues {
    type: left_outer 
    sql_on: ${issue_lob.issue_id} = ${issues.issue_id} ;;
    relationship: many_to_one
  }
}

explore: jira_profiling {
    join: jira_profiling__top_n {
      view_label: "Jira Profiling: Top N"
      sql: LEFT JOIN UNNEST(${jira_profiling.top_n}) as jira_profiling__top_n ;;
      relationship: one_to_many
    }
}

explore: ext_board_info {}

explore: issue_labels {
  join: issues {
    type: left_outer 
    sql_on: ${issue_labels.issue_id} = ${issues.issue_id} ;;
    relationship: many_to_one
  }
}

explore: master_data {
  join: issues {
    type: left_outer 
    sql_on: ${master_data.issue_id} = ${issues.issue_id} ;;
    relationship: many_to_one
  }
}

explore: ext_employee_full_list {}

explore: history {
  join: issues {
    type: left_outer 
    sql_on: ${history.issue_id} = ${issues.issue_id} ;;
    relationship: many_to_one
  }
}

explore: issues {}

explore: master_data_alp {
  join: issues {
    type: left_outer 
    sql_on: ${master_data_alp.issue_id} = ${issues.issue_id} ;;
    relationship: many_to_one
  }
}

explore: projects {}

explore: projects_w_billable {}

explore: v_issue_labels {
  join: issues {
    type: left_outer 
    sql_on: ${v_issue_labels.issue_id} = ${issues.issue_id} ;;
    relationship: many_to_one
  }
}

explore: non_utilized_projects {}

explore: team_lob_utilization {}

explore: user {}

explore: worklog_v2 {
  join: issues {
    type: left_outer 
    sql_on: ${worklog_v2.issue_id} = ${issues.issue_id} ;;
    relationship: many_to_one
  }
}

