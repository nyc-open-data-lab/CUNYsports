#' List Available CUNY Sports Database Tables
#'
#' Returns the names of all tables available in the SQLite database
#' included with the CUNYsports package.
#'
#' This function provides a quick way to explore the tables available
#' in the CUNY Sports database without directly connecting to the
#' underlying SQLite database.
#'
#' @return A tibble with one row per database table and a single column,
#'   `table_name`, containing the name of each available table.
#'
#' @examples
#' cuny_table_names()
#'
#' @export
cuny_table_names <- function() {

  con <- cuny_db()

  on.exit(
    DBI::dbDisconnect(con),
    add = TRUE
  )

  tibble::tibble(
    table_name = DBI::dbListTables(con)
  )
}
