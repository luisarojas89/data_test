view: data_motivos_llamadas {
  sql_table_name: dbavanzo.data_motivos_llamadas ;;

  dimension: agent_name {
    type: string
    sql: ${TABLE}.`AGENT NAME` ;;
  }
  dimension: call_comments {
    type: string
    sql: ${TABLE}.`CALL COMMENTS` ;;
  }
  dimension: cod1 {
    type: string
    sql: ${TABLE}.COD1 ;;
  }
  dimension: cod2 {
    type: string
    sql: ${TABLE}.COD2 ;;
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
  dimension: description_cod1 {
    type: string
    sql: ${TABLE}.`DESCRIPTION COD1` ;;
  }
  dimension: description_cod2 {
    type: string
    sql: ${TABLE}.`DESCRIPTION COD2` ;;
  }
  dimension: durationseg {
    type: string
    sql: ${TABLE}.`DURATION(SEG)` ;;
  }
  dimension: id_call {
    type: string
    sql: ${TABLE}.`ID CALL` ;;
  }
  dimension: id_campaing {
    type: string
    sql: ${TABLE}.`ID CAMPAING` ;;
  }
  dimension: id_customer {
    type: string
    sql: ${TABLE}.`ID CUSTOMER` ;;
  }
  dimension: idmotivos_llamadas {
    type: number
    sql: ${TABLE}.idmotivos_llamadas ;;
  }
  dimension: skill {
    type: string
    sql: ${TABLE}.SKILL ;;
  }
  dimension: telephone {
    type: string
    sql: ${TABLE}.TELEPHONE ;;
  }
  dimension: type_of_call {
    type: string
    sql: ${TABLE}.`TYPE OF CALL` ;;
  }
  dimension: who_hung_up {
    type: string
    sql: ${TABLE}.`WHO HUNG UP` ;;
  }
  measure: count {
    type: count
    drill_fields: [agent_name]
  }
}
