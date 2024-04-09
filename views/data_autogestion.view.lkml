view: data_autogestion {
  sql_table_name: dbavanzo.data_autogestion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }
  dimension: asa_chat {
    type: string
    sql: ${TABLE}.`ASA CHAT` ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }
  dimension: chatid {
    type: string
    sql: ${TABLE}.`CHAT-ID` ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdAt ;;
  }
  dimension: end_date {
    type: string
    sql: ${TABLE}.`END DATE` ;;
  }
  dimension: go_to_agent {
    type: string
    sql: ${TABLE}.`GO TO AGENT` ;;
  }
  dimension: id_autogestion {
    type: number
    sql: ${TABLE}.id_autogestion ;;
  }
  dimension: id_customer {
    type: string
    sql: ${TABLE}.`ID CUSTOMER` ;;
  }
  dimension: last_sender {
    type: string
    sql: ${TABLE}.`LAST SENDER` ;;
  }
  dimension: name_agent {
    type: string
    sql: ${TABLE}.`NAME AGENT` ;;
  }
  dimension: name_customer {
    type: string
    sql: ${TABLE}.`NAME CUSTOMER` ;;
  }
  dimension: phone_customer {
    type: string
    sql: ${TABLE}.`PHONE CUSTOMER` ;;
  }
  dimension: start_date {
    type: string
    sql: ${TABLE}.`START DATE` ;;
  }
  dimension: time_on_chatbot {
    type: string
    sql: ${TABLE}.`TIME ON CHATBOT` ;;
  }
  dimension: time_with_agent {
    type: string
    sql: ${TABLE}.`TIME WITH AGENT` ;;
  }
  dimension: times_chatted {
    type: number
    sql: ${TABLE}.`TIMES CHATTED` ;;
  }
  dimension: total_time {
    type: string
    sql: ${TABLE}.`TOTAL TIME` ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
