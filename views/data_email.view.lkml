view: data_email {
  sql_table_name: dbavanzo.data_email ;;

  dimension: abandon_ {
    type: string
    sql: ${TABLE}.`ABANDON %` ;;
  }
  dimension: abandon_calls {
    type: number
    sql: ${TABLE}.`ABANDON CALLS` ;;
  }
  dimension: answer_calls {
    type: number
    sql: ${TABLE}.`ANSWER CALLS` ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdAt ;;
  }
  dimension: day {
    type: string
    sql: ${TABLE}.DAY ;;
  }
  dimension: id_email {
    type: number
    sql: ${TABLE}.id_email ;;
  }
  dimension: inbound_calls {
    type: number
    sql: ${TABLE}.`INBOUND CALLS` ;;
  }
  dimension: queue {
    type: string
    sql: ${TABLE}.QUEUE ;;
  }
  dimension: service_level_10_seg {
    type: string
    sql: ${TABLE}.`SERVICE LEVEL 10SEG` ;;
  }
  dimension: service_level_20_seg {
    type: string
    sql: ${TABLE}.`SERVICE LEVEL 20SEG` ;;
  }
  dimension: service_level_30_seg {
    type: string
    sql: ${TABLE}.`SERVICE LEVEL 30SEG` ;;
  }
  measure: count {
    type: count
  }
}
