view: data_duracion_llamadas {
  sql_table_name: dbavanzo.data_duracion_llamadas ;;

  dimension: calls {
    type: number
    sql: ${TABLE}.CALLS ;;
  }
  dimension: cost {
    type: string
    sql: ${TABLE}.COST ;;
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
  dimension: idduracion_llamadas {
    type: number
    sql: ${TABLE}.idduracion_llamadas ;;
  }
  dimension: interval {
    type: string
    sql: ${TABLE}.`INTERVAL` ;;
  }
  dimension: minutes {
    type: number
    sql: ${TABLE}.MINUTES ;;
  }
  dimension: percentage_ {
    type: string
    sql: ${TABLE}.`PERCENTAGE %` ;;
  }
  measure: count {
    type: count
  }
}
