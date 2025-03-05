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
  measure: sum_of_total_hours {
    type: sum
    sql: ${total_hours};;
    value_format_name: decimal_0
  }
  measure: utilisation {
    type: number
    sql:
    CASE
      WHEN ${lob} IN ('Services - Consultancy', 'Services - Managed', 'Services - Project Implementation')
      THEN SUM(${total_hours}) / NULLIF(${total_hours}, 0)
      ELSE NULL
    END ;;
    value_format_name: decimal_2
  }
}
