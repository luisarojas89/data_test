view: historico_solicitud_mensual {
  sql_table_name: dbavanzo.historico_solicitud_mensual ;;

  dimension: hsm_credito {
    type: string
    sql: ${TABLE}.hsm_credito ;;
  }
  dimension: hsm_empresa {
    type: string
    sql: ${TABLE}.hsm_empresa ;;
  }
  dimension: hsm_estado_solicitud {
    type: number
    sql: ${TABLE}.hsm_estado_solicitud ;;
  }
  dimension: hsm_fase_solicitud {
    type: number
    sql: ${TABLE}.hsm_fase_solicitud ;;
  }
  dimension_group: hsm_fecha_desembolso {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hsm_fecha_desembolso ;;
  }
  dimension_group: hsm_fecha_solicitud {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hsm_fecha_solicitud ;;
  }
  dimension: hsm_id {
    type: number
    sql: ${TABLE}.hsm_id ;;
  }
  dimension: hsm_monto_desembolso {
    type: number
    sql: ${TABLE}.hsm_monto_desembolso ;;
  }
  dimension: hsm_motivo_rechazo {
    type: string
    sql: ${TABLE}.hsm_motivo_rechazo ;;
  }
  dimension: hsm_numero_cedula {
    type: string
    sql: ${TABLE}.hsm_numero_cedula ;;
  }
  dimension: hsm_recuperable {
    type: yesno
    sql: ${TABLE}.hsm_recuperable ;;
  }
  dimension: hsm_solicitud {
    type: number
    sql: ${TABLE}.hsm_solicitud ;;
  }
  measure: count {
    type: count
  }
}
