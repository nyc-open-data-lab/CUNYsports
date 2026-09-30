#' View Column Information for a CUNY Sports Table
#'
#' Returns metadata and descriptive information for the columns in a
#' table available in the CUNY Sports database.
#'
#' Column information is retrieved from the `column_catalog` dataset
#' included with the CUNYsports package. The catalog includes column
#' names, suggested names, data types, descriptions, example values,
#' key information, and additional notes.
#'
#' Use [cuny_table_names()] to view the tables currently available in
#' the CUNY Sports database and [cuny_table_info()] to view information
#' about a specific table.
#'
#' @param x A character string specifying the name of a table in the
#'   CUNY Sports database.
#'
#' @return A tibble containing one row per column in the requested table
#'   and metadata describing each column.
#'
#' @examples
#' cuny_columns_info("basketball_all_seasons_team_final")
#'
#' @export
cuny_columns_info <- function(x) {

  if (length(x) != 1 || !is.character(x)) {
    stop("`x` must be a single table name.")
  }

  info <- column_catalog |>
    dplyr::filter(.data$table_name == x)

  if (nrow(info) == 0) {
    stop(
      "Table '", x, "' was not found in the CUNY Sports column catalog. ",
      "Use cuny_table_names() to view available tables."
    )
  }

  info
}
