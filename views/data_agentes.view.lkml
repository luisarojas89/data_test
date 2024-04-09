view: data_agentes {
  sql_table_name: dbavanzo.data_agentes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: acw_time {
    type: string
    sql: ${TABLE}.ACW_TIME ;;
  }
  dimension: agent_id {
    type: number
    sql: ${TABLE}.AGENT_ID ;;
  }
  dimension: agent_name {
    type: string
    sql: ${TABLE}.AGENT_NAME ;;
  }
  dimension: aht {
    type: string
    sql: ${TABLE}.AHT ;;
  }
  dimension: aux_time {
    type: string
    sql: ${TABLE}.AUX_TIME ;;
  }
  dimension: calls {
    type: number
    sql: ${TABLE}.CALLS ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.DATE ;;
  }
  dimension: hour {
    type: string
    sql: ${TABLE}.HOUR ;;
  }
  dimension: inbound {
    type: number
    sql: ${TABLE}.INBOUND ;;
  }
  dimension: inbound_time {
    type: string
    sql: ${TABLE}.INBOUND_TIME ;;
  }
  dimension: internal {
    type: number
    sql: ${TABLE}.INTERNAL ;;
  }
  dimension: login_time {
    type: string
    sql: ${TABLE}.LOGIN_TIME ;;
  }
  dimension: occupancy {
    type: string
    sql: ${TABLE}.OCCUPANCY ;;
  }
  dimension: outbound {
    type: number
    sql: ${TABLE}.OUTBOUND ;;
  }
  dimension: outbound_time {
    type: string
    sql: ${TABLE}.OUTBOUND_TIME ;;
  }
  dimension: ready_time {
    type: string
    sql: ${TABLE}.READY_TIME ;;
  }
  dimension: ring_time {
    type: string
    sql: ${TABLE}.RING_TIME ;;
  }
  measure: count {
    type: count
    drill_fields: [id, agent_name]
  }
}
