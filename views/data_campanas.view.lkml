view: data_campanas {
  sql_table_name: dbavanzo.data_campanas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: abandonadas {
    type: string
    sql: ${TABLE}.Abandonadas ;;
  }
  dimension: aht {
    type: string
    sql: ${TABLE}.AHT ;;
  }
  dimension: asa {
    type: number
    sql: ${TABLE}.ASA ;;
  }
  dimension: ata {
    type: number
    sql: ${TABLE}.ATA ;;
  }
  dimension: fecha {
    type: string
    sql: ${TABLE}.Fecha ;;
  }
  dimension: llamadas_abandonadas {
    type: number
    sql: ${TABLE}.Llamadas_abandonadas ;;
  }
  dimension: llamadas_entrantes {
    type: number
    sql: ${TABLE}.Llamadas_entrantes ;;
  }
  dimension: llamadas_respondidas {
    type: number
    sql: ${TABLE}.Llamadas_respondidas ;;
  }
  dimension: nive__servicio_20_sg {
    type: string
    sql: ${TABLE}.`Nive_ servicio_20_sg` ;;
  }
  dimension: nivel_servicio_10_sg {
    type: string
    sql: ${TABLE}.Nivel_servicio_10_sg ;;
  }
  dimension: nivel_servicio_30_sg {
    type: string
    sql: ${TABLE}.Nivel_servicio_30_sg ;;
  }
  dimension: skill {
    type: string
    sql: ${TABLE}.Skill ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
