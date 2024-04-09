view: datos_clientes {
  sql_table_name: dbavanzo.datos_clientes ;;

  dimension: dtc_apellidos {
    type: string
    sql: ${TABLE}.dtc_apellidos ;;
  }
  dimension: dtc_cupo_aprobado {
    type: number
    sql: ${TABLE}.dtc_cupo_aprobado ;;
  }
  dimension: dtc_empresa {
    type: string
    sql: ${TABLE}.dtc_empresa ;;
  }
  dimension: dtc_estado_aprobado {
    type: yesno
    sql: ${TABLE}.dtc_estado_aprobado ;;
  }
  dimension: dtc_estado_plataforma {
    type: yesno
    sql: ${TABLE}.dtc_estado_plataforma ;;
  }
  dimension_group: dtc_fecha_aprobacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dtc_fecha_aprobacion ;;
  }
  dimension_group: dtc_fecha_inhabilitacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dtc_fecha_inhabilitacion ;;
  }
  dimension_group: dtc_fecha_primer_reporte {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dtc_fecha_primer_reporte ;;
  }
  dimension_group: dtc_fecha_registro {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dtc_fecha_registro ;;
  }
  dimension: dtc_id {
    type: number
    sql: ${TABLE}.dtc_id ;;
  }
  dimension: dtc_identification_id {
    type: string
    sql: ${TABLE}.dtc_identificationId ;;
  }
  dimension: dtc_nombres {
    type: string
    sql: ${TABLE}.dtc_nombres ;;
  }
  measure: count {
    type: count
  }
}
