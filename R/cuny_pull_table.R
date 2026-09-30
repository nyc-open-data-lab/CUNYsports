#' Pull a Table from the CUNY Sports Database
#'
#' Retrieves a complete table from the SQLite database included with
#' the CUNYsports package and returns it as an R data frame.
#'
#' Use [cuny_table_names()] to view the tables currently available in
#' the CUNY Sports database.
#'
#' @param x A character string specifying the name of the table to retrieve.
#'
#' @return A data frame containing the requested table.
#'
#' @examples
#' cuny_pull_table("basketball_all_seasons_team_final")
#'
#' @export
cuny_pull_table <- function(x) {

  con <- cuny_db()

  on.exit(
    DBI::dbDisconnect(con),
    add = TRUE
  )

  tables <- DBI::dbListTables(con)

  if (!x %in% tables) {
    stop(
      "Table '", x, "' was not found in the CUNY Sports database. ",
      "Use cuny_table_names() to view available tables."
    )
  }

  DBI::dbReadTable(
    con,
    x
  )
}
