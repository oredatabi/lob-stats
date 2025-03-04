view: team_lob_utilization {
  sql_table_name: `JiraReport.team_lob_utilization` ;;

  dimension: lob {
    type: string
    sql: ${TABLE}.lob ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startDate ;;
  }
  dimension: team_name {
    type: string
    sql: ${TABLE}.teamName ;;
  }
  dimension: total_hours {
    type: number
    sql: ${TABLE}.total_hours ;;
  }
  measure: count {
    type: count
    drill_fields: [team_name]
  }
}
