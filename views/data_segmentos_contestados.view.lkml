view: data_segmentos_contestados {
  sql_table_name: dbavanzo.data_segmentos_contestados ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdAt ;;
  }
  dimension_group: fecha_archivo {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_archivo ;;
  }
  dimension: nombre_llamadas {
    type: number
    sql: ${TABLE}.`Nombre llamadas` ;;
  }
  dimension: queue {
    type: number
    sql: ${TABLE}.QUEUE ;;
  }
  dimension: queue_nombre {
    type: string
    sql: ${TABLE}.`QUEUE nombre` ;;
  }
  dimension: respuesta_0seg__10seg {
    type: number
    sql: ${TABLE}.`Respuesta (0seg - 10seg)` ;;
  }
  dimension: respuesta_11seg__20seg {
    type: number
    sql: ${TABLE}.`Respuesta (11seg - 20seg)` ;;
  }
  dimension: respuesta_21seg__30seg {
    type: number
    sql: ${TABLE}.`Respuesta (21seg - 30seg)` ;;
  }
  dimension: respuesta_31seg__40seg {
    type: number
    sql: ${TABLE}.`Respuesta (31seg - 40seg)` ;;
  }
  dimension: respuesta_41seg__50seg {
    type: number
    sql: ${TABLE}.`Respuesta (41seg - 50seg)` ;;
  }
  dimension: respuesta_51seg {
    type: number
    sql: ${TABLE}.`Respuesta >=51seg` ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
