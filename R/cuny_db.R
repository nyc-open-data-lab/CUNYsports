#' Connect to the CUNY Sports Database
#'
#' Opens a connection to the SQLite database included with CUNYsports.
#'
#' @return A DBI database connection.
#'
#' @export
cuny_db <- function() {

  DBI::dbConnect(
    RSQLite::SQLite(),
    system.file(
      "extdata",
      "cuny-sports.db",
      package = "CUNYsports"
    )
  )
}
