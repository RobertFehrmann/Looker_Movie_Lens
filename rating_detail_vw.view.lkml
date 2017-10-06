view: rating_detail_vw {
  sql_table_name: PRIVATE_SHARE.RATING_DETAIL_VW ;;

  dimension: genres {
    type: string
    sql: ${TABLE}.GENRES ;;
  }

  dimension: movieid {
    type: number
    value_format_name: id
    sql: ${TABLE}.MOVIEID ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.RATING ;;
  }

  dimension: ratingsourceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.RATINGSOURCEID ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.TIMESTAMP ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_rating {
    type: average
    sql: ${rating} ;;
    value_format_name: decimal_1
  }
}
