view: data_tratos {
  sql_table_name: dbavanzo.data_tratos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividades_pendientes {
    type: number
    sql: ${TABLE}.actividades_pendientes ;;
  }
  dimension: activididades_completadas {
    type: number
    sql: ${TABLE}.activididades_completadas ;;
  }
  dimension_group: actualizacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.actualizacion ;;
  }
  dimension: cantidad_producto {
    type: string
    sql: ${TABLE}.cantidad_producto ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: comercial {
    type: string
    sql: ${TABLE}.comercial ;;
  }
  dimension: contacto {
    type: string
    sql: ${TABLE}.contacto ;;
  }
  dimension: correos_electronicos {
    type: number
    sql: ${TABLE}.correos_electronicos ;;
  }
  dimension_group: creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creacion ;;
  }
  dimension: creador {
    type: string
    sql: ${TABLE}.creador ;;
  }
  dimension: empleados {
    type: number
    sql: ${TABLE}.empleados ;;
  }
  dimension: empleados2 {
    type: number
    sql: ${TABLE}.empleados2 ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }
  dimension: etiqueta {
    type: string
    sql: ${TABLE}.etiqueta ;;
  }
  dimension: fecha_ganado {
    type: string
    sql: ${TABLE}.fecha_ganado ;;
  }
  dimension: fecha_perdido {
    type: string
    sql: ${TABLE}.fecha_perdido ;;
  }
  dimension: fecha_prevista_cierre {
    type: string
    sql: ${TABLE}.fecha_prevista_cierre ;;
  }
  dimension: industria {
    type: string
    sql: ${TABLE}.industria ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: moneda_ponderada {
    type: string
    sql: ${TABLE}.moneda_ponderada ;;
  }
  dimension: monto_producto {
    type: string
    sql: ${TABLE}.monto_producto ;;
  }
  dimension: motivo_perdida {
    type: string
    sql: ${TABLE}.motivo_perdida ;;
  }
  dimension: nombre_producto {
    type: string
    sql: ${TABLE}.nombre_producto ;;
  }
  dimension: organizacion {
    type: string
    sql: ${TABLE}.organizacion ;;
  }
  dimension: probabilidad {
    type: string
    sql: ${TABLE}.probabilidad ;;
  }
  dimension: proxima_actividad {
    type: string
    sql: ${TABLE}.proxima_actividad ;;
  }
  dimension: tipificacion {
    type: string
    sql: ${TABLE}.tipificacion ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  dimension: total_actividades {
    type: number
    sql: ${TABLE}.total_actividades ;;
  }
  dimension: trato_cerrado {
    type: string
    sql: ${TABLE}.`trato cerrado` ;;
  }
  dimension: ultima_actividad {
    type: string
    sql: ${TABLE}.ultima_actividad ;;
  }
  dimension: ultimo_cambio_etapa {
    type: string
    sql: ${TABLE}.ultimo_cambio_etapa ;;
  }
  dimension: ultimo_correo_enviado {
    type: string
    sql: ${TABLE}.ultimo_correo_enviado ;;
  }
  dimension: ultimo_correo_recibido {
    type: string
    sql: ${TABLE}.ultimo_correo_recibido ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
