view: movie_vw {
  sql_table_name: PUBLIC_SHARE.MOVIE_VW ;;

  dimension: genres {
    type: string
    sql: ${TABLE}.GENRES ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
