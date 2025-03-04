view: ext_board_info {
  sql_table_name: `JiraReport.ext_board_info` ;;

  dimension: billable_non_billable {
    type: string
    sql: ${TABLE}.billableNonBillable ;;
  }
  dimension: boards {
    type: string
    sql: ${TABLE}.boards ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }
  dimension: customer_related_product_internal {
    type: string
    sql: ${TABLE}.customerRelatedProductInternal ;;
  }
  dimension: project_risk_ratio {
    type: string
    sql: ${TABLE}.projectRiskRatio ;;
  }
  dimension: responsible_lob {
    type: string
    sql: ${TABLE}.responsibleLob ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
  }
}
