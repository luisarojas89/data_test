view: historico_desembolso_mensual {
  sql_table_name: dbavanzo.historico_desembolso_mensual ;;

  dimension: hdm_credito {
    type: string
    sql: ${TABLE}.hdm_credito ;;
  }
  dimension: hdm_desembolso {
    type: number
    sql: ${TABLE}.hdm_desembolso ;;
  }
  dimension: hdm_empresa {
    type: string
    sql: ${TABLE}.hdm_empresa ;;
  }
  dimension_group: hdm_fecha_desembolso {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hdm_fecha_desembolso ;;
  }
  dimension_group: hdm_fecha_solicitud {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hdm_fecha_solicitud ;;
  }
  dimension: hdm_id {
    type: number
    sql: ${TABLE}.hdm_id ;;
  }
  dimension: hdm_monto_desembolso {
    type: number
    sql: ${TABLE}.hdm_monto_desembolso ;;
  }
  dimension: hdm_numero_cedula {
    type: string
    sql: ${TABLE}.hdm_numero_cedula ;;
  }
  measure: count {
    type: count
  }
}
