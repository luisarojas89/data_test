view: historico_estado_cliente {
  sql_table_name: dbavanzo.historico_estado_cliente ;;

  dimension: cedula {
    type: string
    sql: ${TABLE}.cedula ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  measure: count {
    type: count
  }
}
