view: historico_administracion_mensual {
  sql_table_name: dbavanzo.historico_administracion_mensual ;;

  dimension: ham_adpa_year_mont {
    type: string
    sql: ${TABLE}.ham_adpa_year_mont ;;
  }
  dimension: ham_cedula {
    type: string
    sql: ${TABLE}.ham_cedula ;;
  }
  dimension: ham_credito {
    type: string
    sql: ${TABLE}.ham_credito ;;
  }
  dimension: ham_desembolso {
    type: number
    sql: ${TABLE}.ham_desembolso ;;
  }
  dimension: ham_empresa {
    type: string
    sql: ${TABLE}.ham_empresa ;;
  }
  dimension_group: ham_fecha_creacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ham_fecha_creacion ;;
  }
  dimension: ham_id {
    type: number
    sql: ${TABLE}.ham_id ;;
  }
  dimension: ham_monto_administracion {
    type: number
    sql: ${TABLE}.ham_monto_administracion ;;
  }
  dimension: ham_semana {
    type: number
    sql: ${TABLE}.ham_semana ;;
  }
  measure: count {
    type: count
  }
}
