view: datos_solicitudes {
  sql_table_name: dbavanzo.datos_solicitudes ;;

  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.createdAt ;;
  }
  dimension_group: desembolso {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.desembolso ;;
  }
  dimension: dso_id {
    type: number
    sql: ${TABLE}.dso_id ;;
  }
  dimension: id_request {
    type: number
    sql: ${TABLE}.idRequest ;;
  }
  dimension: identification_id {
    type: string
    sql: ${TABLE}.identificationId ;;
  }
  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: request_phase_id_request_phase {
    type: number
    value_format_name: id
    sql: ${TABLE}.RequestPhase_idRequestPhase ;;
  }
  dimension: request_state_id_request_state {
    type: number
    value_format_name: id
    sql: ${TABLE}.RequestState_idRequestState ;;
  }
  dimension: rere_motivo {
    type: string
    sql: ${TABLE}.rere_motivo ;;
  }
  dimension: social_reason {
    type: string
    sql: ${TABLE}.socialReason ;;
  }
  dimension: split {
    type: number
    sql: ${TABLE}.split ;;
  }
  measure: count {
    type: count
  }
}
