#' Senior Thesis Checkouts
#'
#' Data collected by Math 141 students. Each row is a single thesis sampled from
#' the thesis tower.
#'
#' @format A tbl_df with 245 rows and 6 variables:
#' \describe{
#'   \item{barcode}{8 digit code on the book.}
#'   \item{author_last_name}{Last name of the thesis author.}
#'   \item{year}{Year the thesis was published.}
#'   \item{checkouts}{Number of checkouts, as assess by looking at the number of stamps on the card inside.}
#'   \item{division}{Division to which the thesis student belonged. One of \code{HSS},
#'   \code{MNS}, \code{ARTS}, \code{PRPL}, or \code{LL}. Interdisciplinary theses were categorized to the best of ability and MALS theses were not considered.}
#'   \item{n_pages}{Number of pages (including references).}
#'   }
"theses"