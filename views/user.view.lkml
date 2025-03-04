view: user {
  sql_table_name: `JiraReport.user` ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }
  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.endDate ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startDate ;;
  }
  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
