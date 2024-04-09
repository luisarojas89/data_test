view: data_llamada_hora {
  sql_table_name: dbavanzo.data_llamada_hora ;;

  dimension: abandon_ {
    type: string
    sql: ${TABLE}.`ABANDON %` ;;
  }
  dimension: abandon_calls {
    type: number
    sql: ${TABLE}.`ABANDON CALLS` ;;
  }
  dimension: aht {
    type: string
    sql: ${TABLE}.AHT ;;
  }
  dimension: answer_calls {
    type: number
    sql: ${TABLE}.`ANSWER CALLS` ;;
  }
  dimension: asa {
    type: string
    sql: ${TABLE}.ASA ;;
  }
  dimension: ata {
    type: string
    sql: ${TABLE}.ATA ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdAt ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.DATE ;;
  }
  dimension: hour {
    type: number
    sql: ${TABLE}.HOUR ;;
  }
  dimension: id_llamada_hora {
    type: number
    sql: ${TABLE}.id_llamada_hora ;;
  }
  dimension: inbound_calls {
    type: number
    sql: ${TABLE}.`INBOUND CALLS` ;;
  }
  dimension: queue_name {
    type: string
    sql: ${TABLE}.`QUEUE NAME` ;;
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
  dimension: wait_timeseg {
    type: number
    sql: ${TABLE}.`WAIT TIME(SEG)` ;;
  }
  measure: count {
    type: count
    drill_fields: [queue_name]
  }
}
