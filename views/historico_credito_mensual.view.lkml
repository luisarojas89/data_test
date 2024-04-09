view: historico_credito_mensual {
  sql_table_name: dbavanzo.historico_credito_mensual ;;

  dimension: hcm_credito {
    type: string
    sql: ${TABLE}.hcm_credito ;;
  }
  dimension: hcm_desembolso {
    type: number
    sql: ${TABLE}.hcm_desembolso ;;
  }
  dimension: hcm_empresa {
    type: string
    sql: ${TABLE}.hcm_empresa ;;
  }
  dimension_group: hcm_fecha_desembolso {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hcm_fecha_desembolso ;;
  }
  dimension_group: hcm_fecha_solicitud {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hcm_fecha_solicitud ;;
  }
  dimension: hcm_id {
    type: number
    sql: ${TABLE}.hcm_id ;;
  }
  dimension: hcm_numero_cedula {
    type: string
    sql: ${TABLE}.hcm_numero_cedula ;;
  }
  measure: count {
    type: count
  }
}
