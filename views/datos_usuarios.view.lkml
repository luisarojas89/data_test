view: datos_usuarios {
  sql_table_name: dbavanzo.datos_usuarios ;;

  dimension: dtu_apellidos {
    type: string
    sql: ${TABLE}.dtu_apellidos ;;
  }
  dimension: dtu_cupo_aprobado {
    type: number
    sql: ${TABLE}.dtu_cupo_aprobado ;;
  }
  dimension: dtu_empresa {
    type: string
    sql: ${TABLE}.dtu_empresa ;;
  }
  dimension: dtu_estado_plataforma {
    type: yesno
    sql: ${TABLE}.dtu_estado_plataforma ;;
  }
  dimension_group: dtu_fecha_aprobacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dtu_fecha_aprobacion ;;
  }
  dimension_group: dtu_fecha_inhabilitacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dtu_fecha_inhabilitacion ;;
  }
  dimension_group: dtu_fecha_primer_reporte {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dtu_fecha_primer_reporte ;;
  }
  dimension: dtu_id {
    type: number
    sql: ${TABLE}.dtu_id ;;
  }
  dimension: dtu_identification_id {
    type: string
    sql: ${TABLE}.dtu_identificationId ;;
  }
  dimension: dtu_nombres {
    type: string
    sql: ${TABLE}.dtu_nombres ;;
  }
  measure: count {
    type: count
  }
}
