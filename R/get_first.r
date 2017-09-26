#' Get first digit
#'
#' Returns the first digit of a larger number.
#'
#' @param x a large number (of class numeric or integer)
#'
#' @return The first digit.
#' @export
get_first <- function(x) {
  as.numeric(substr(as.character(x), 1, 1))
}
