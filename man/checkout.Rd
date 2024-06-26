% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/checkout.R
\docType{data}
\name{checkout}
\alias{checkout}
\title{Checkout policies in UK supermarkets}
\format{
A data.frame with 163 rows and 4 variables:
\describe{
  \item{store_id}{Unique ID of the store.}
  \item{time}{Numeric variable counting the number of 4-week periods elapsed
  since the beginning of the study.}
  \item{sales}{Number of units of unhealthy snacks sold at this store
   during the corresponding 4-week period.}
  \item{checkout_policy}{Logical variable indicating whether a checkout policy
  was instituted at this store during the corresponding 4-week period.}
  }
 @source modified version of data used in Ejlerskov KT, Sharp SJ, Stead M,
 Adamson AJ, White M, Adams J. Supermarket policies on less-healthy food at
 checkouts: Natural experimental evaluation using interrupted time series
 analyses of purchases. *PLoS Med.* 2018 Dec 18;15(12). Accessed via a
 repository described in Turner, S. L., Korevaar, E., Karahalios, A., Forbes,
 A. B., & McKenzie, J. E. (2023). Interrupted time series datasets from
 studies investigating the impact of interventions or exposures in public
 health and social science: A data note.
 Original data is available for download at
 \href{https://bridges.monash.edu/articles/dataset/_Interrupted_time_series_datasets_from_studies_investigating_the_impact_of_interventions_or_exposures_in_public_health_and_social_science_A_data_note/24287338}
}
\usage{
checkout
}
\description{
Panel data on checkout policy and sales of unhealthy snacks at six UK
supermarkets. Six supermarkets are measured every four weeks, with number
of units of unhealthy snacks sold recorded at each time point.  Four of
these supermarkets institute a checkout policy after the first 14 four-week
periods.  Note that these data have been modified for pedagogical purposes:
the original dataset contains six stores, all of which instituted checkout
policies, but in this version two of the stores have been relabeled as pure
controls and their post-time-of-treatment sales numbers have been altered.
}
\keyword{datasets}
