#' Election results for the 2009 Iranian presidential election
#' 
#' @format A tbl_df with with 366 rows and 9 variables:
#' \describe{
#'   \item{province}{an identifier for which province the city in question is in}
#'   \item{city}{Which city the vote counts are for. Unique in combination with province.}
#'   \item{ahmadinejad}{the number of legitimate votes cast for Mahmoud Ahmadinejad}
#'   \item{rezai}{the number of legitimate votes cast for Mohsen Rezai}
#'   \item{karrubi}{the number of legitimate votes cast for Mehdi Karrubi}
#'   \item{mousavi}{the number of legitimate votes cast for Mir-Hossein Mousavi}
#'   \item{total_votes_cast}{the total number of votes cast}
#'   \item{voided_votes}{the number of votes voided or marked illegitimate}
#'   \item{legitimate_votes}{total counted votes, calculated from total_cotes_cast - voided_votes}
#'  }
"iran"