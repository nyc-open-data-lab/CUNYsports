#' Search Available CUNY Sports Tables
#'
#' Searches the CUNY Sports table catalog for tables matching a keyword.
#'
#' The search is performed across table names, display names, descriptions,
#' and likely uses, making it easier to discover relevant tables without
#' knowing their exact names.
#'
#' Use [cuny_table_info()] to view detailed information about a specific
#' table and [cuny_pull_table()] to retrieve a table from the database.
#'
#' @param x A character string containing a keyword to search for.
#'
#' @return A tibble containing catalog entries for tables matching the
#'   search term.
#'
#' @examples
#' cuny_find_tables("player")
#' cuny_find_tables("game")
#' cuny_find_tables("scoring")
#'
#' @export
cuny_find_tables <- function(x) {

  if (length(x) != 1 || !is.character(x)) {
    stop("`x` must be a single search term.")
  }

  results <- table_catalog |>
    dplyr::filter(
      stringr::str_detect(
        stringr::str_to_lower(
          paste(
            .data$table_name,
            .data$display_name,
            .data$description,
            .data$likely_uses
          )
        ),
        stringr::fixed(stringr::str_to_lower(x))
      )
    )

  if (nrow(results) == 0) {
    message(
      "No tables found matching '", x, "'. ",
      "Use cuny_table_names() to view all available tables."
    )
  }

  results
}
