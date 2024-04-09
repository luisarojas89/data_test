view: data_encuesta_satisfaccion {
  sql_table_name: dbavanzo.data_encuesta_satisfaccion ;;

  dimension: average {
    type: string
    sql: ${TABLE}.AVERAGE ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdAt ;;
  }
  dimension_group: fecha_archivo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_archivo ;;
  }
  dimension: idencuesta_satisfaccion {
    type: number
    sql: ${TABLE}.idencuesta_satisfaccion ;;
  }
  dimension: q01 {
    type: string
    sql: ${TABLE}.Q01 ;;
  }
  dimension: q02 {
    type: string
    sql: ${TABLE}.Q02 ;;
  }
  dimension: q03 {
    type: string
    sql: ${TABLE}.Q03 ;;
  }
  dimension: q04 {
    type: string
    sql: ${TABLE}.Q04 ;;
  }
  dimension: q05 {
    type: string
    sql: ${TABLE}.Q05 ;;
  }
  dimension: queue {
    type: string
    sql: ${TABLE}.QUEUE ;;
  }
  dimension: queue_name {
    type: string
    sql: ${TABLE}.`QUEUE NAME` ;;
  }
  dimension: surveys {
    type: string
    sql: ${TABLE}.SURVEYS ;;
  }
  measure: count {
    type: count
    drill_fields: [queue_name]
  }
}
