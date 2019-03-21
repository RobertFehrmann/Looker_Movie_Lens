view: movie {
  sql_table_name: MOVIE_LENS.MOVIE ;;

  dimension: movieid {
    primary_key: yes
    type: number
    sql: ${TABLE}.MOVIEID ;;
  }

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
    drill_fields: [movieid]
  }
}
