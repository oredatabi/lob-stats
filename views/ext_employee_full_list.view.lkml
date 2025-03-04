view: ext_employee_full_list {
  sql_table_name: `JiraReport.ext_employee_full_list` ;;

  dimension: based_on_quarter {
    type: string
    sql: ${TABLE}.basedOnQuarter ;;
  }
  dimension: current_contract_type {
    type: string
    sql: ${TABLE}.currentContractType ;;
  }
  dimension: customer_info {
    type: string
    sql: ${TABLE}.customerInfo ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }
  dimension: inhouse_outsource_intern {
    type: string
    sql: ${TABLE}.inhouseOutsourceIntern ;;
  }
  dimension: key_personnel {
    type: string
    sql: ${TABLE}.keyPersonnel ;;
  }
  dimension: last_performance {
    type: string
    sql: ${TABLE}.lastPerformance ;;
  }
  dimension: month_of_the_start {
    type: string
    sql: ${TABLE}.monthOfTheStart ;;
  }
  dimension: month_of_the_termination {
    type: string
    sql: ${TABLE}.monthOfTheTermination ;;
  }
  dimension: name_surname {
    type: string
    sql: ${TABLE}.nameSurname ;;
  }
  dimension: org_period {
    type: string
    sql: ${TABLE}.orgPeriod ;;
  }
  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }
  dimension: revised_offer {
    type: string
    sql: ${TABLE}.revisedOffer ;;
  }
  dimension: start_date {
    type: string
    sql: ${TABLE}.startDate ;;
  }
  dimension: termination_based_on_quarterly {
    type: string
    sql: ${TABLE}.terminationBasedOnQuarterly ;;
  }
  dimension: termination_date {
    type: string
    sql: ${TABLE}.terminationDate ;;
  }
  dimension: termination_reasons {
    type: string
    sql: ${TABLE}.terminationReasons ;;
  }
  dimension: work_type {
    type: string
    sql: ${TABLE}.workType ;;
  }
  dimension: year_of_the_start {
    type: string
    sql: ${TABLE}.yearOfTheStart ;;
  }
  dimension: year_of_the_termination {
    type: string
    sql: ${TABLE}.yearOfTheTermination ;;
  }
  measure: count {
    type: count
    drill_fields: [name_surname]
  }
}
