#' View Information About a CUNY Sports Table
#'
#' Returns metadata and descriptive information for a table available
#' in the CUNY Sports database.
#'
#' Table information is retrieved from the `table_catalog` dataset
#' included with the CUNYsports package. Use [cuny_table_names()] to
#' view the names of tables currently available in the database.
#'
#' @param x A character string specifying the name of a table in the
#'   CUNY Sports database.
#'
#' @return A tibble containing metadata and descriptive information
#'   about the requested table.
#'
#' @examples
#' cuny_table_info("basketball_all_seasons_team_final")
#'
#' @export
cuny_table_info <- function(x) {

  info <- table_catalog |>
    dplyr::filter(.data$table_name == x)

  if (nrow(info) == 0) {
    stop(
      "Table '", x, "' was not found in the CUNY Sports table catalog. ",
      "Use cuny_table_names() to view available tables."
    )
  }

  info
}
