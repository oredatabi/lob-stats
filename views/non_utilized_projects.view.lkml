view: non_utilized_projects {
  sql_table_name: `JiraReport.non_utilized_projects` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: lead_account_id {
    type: string
    sql: ${TABLE}.leadAccountId ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: project_type_key {
    type: string
    sql: ${TABLE}.projectTypeKey ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
