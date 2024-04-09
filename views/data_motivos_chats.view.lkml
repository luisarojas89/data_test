view: data_motivos_chats {
  sql_table_name: dbavanzo.data_motivos_chats ;;

  dimension: agent_id {
    type: string
    sql: ${TABLE}.`AGENT ID` ;;
  }
  dimension: agent_name {
    type: string
    sql: ${TABLE}.`AGENT NAME` ;;
  }
  dimension: asachat {
    type: string
    sql: ${TABLE}.`ASA(CHAT)` ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }
  dimension: chat_duration {
    type: string
    sql: ${TABLE}.`CHAT DURATION` ;;
  }
  dimension: chatid {
    type: string
    sql: ${TABLE}.`CHAT-ID` ;;
  }
  dimension: cod_act {
    type: string
    sql: ${TABLE}.`COD ACT` ;;
  }
  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdAt ;;
  }
  dimension: customer_email {
    type: string
    sql: ${TABLE}.`CUSTOMER EMAIL` ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.`CUSTOMER NAME` ;;
  }
  dimension: customer_phone {
    type: string
    sql: ${TABLE}.`CUSTOMER PHONE` ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.DATE ;;
  }
  dimension: description_cod_act {
    type: string
    sql: ${TABLE}.`DESCRIPTION COD ACT` ;;
  }
  dimension: id_customer {
    type: string
    sql: ${TABLE}.ID_CUSTOMER ;;
  }
  dimension: idmotivos_chats {
    type: number
    sql: ${TABLE}.idmotivos_chats ;;
  }
  dimension: last_participant_who_spoke {
    type: string
    sql: ${TABLE}.`LAST PARTICIPANT WHO SPOKE` ;;
  }
  dimension: skill {
    type: string
    sql: ${TABLE}.SKILL ;;
  }
  dimension: time_on_agent {
    type: string
    sql: ${TABLE}.`TIME ON AGENT` ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.`USER ID` ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name, agent_name]
  }
}
