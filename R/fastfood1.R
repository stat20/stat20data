#' Card & Krueger minimum wage data, cross-sectional
#'
#' Cross-sectional excerpt of employment data collected from New Jersey and
#' Pennsylvania fast food restaurants as part of Card & Krueger's seminal study
#' on minimum wage.  This version of the dataset retains covariate information
#' from the first wave of data collection only and employment numbers from the
#' second wave of data collection only (see fastfood2 for a different
#' version of the dataset with repeated measures). Of the 410 restaurants
#' originally surveyed, 11 have been excluded here because they were closed
#' or refused to participate during the second wave of data collection.  Missing
#' values have also been imputed.
#'
#'
#' @format A data.frame with 399 rows and 25 variables:
#' \describe{
#'   \item{store_id}{Unique ID for each fast food restaurant.}
#'   \item{chain}{Factor describing which fast food chain restaurant belongs to.}
#'   \item{comp_owned}{Numeric indicator for whether store is company-owned.}
#'   \item{state}{Factor describing state (NJ or PA) in which store is located.}
#'   \item{region}{Factor, geographic region where store is located.}
#'   \item{NJshore}{Numeric indicator for whether store is on the Jersey Shore.}
#'   \item{num_callbacks}{Number of callbacks during first stage of data collection.}
#'   \item{starting_wage}{Starting wage in dollars.}
#'   \item{months_to_first_raise}{Usual number of months an employee works
#'   before receiving their first raise.}
#'   \item{first_raise_amt}{Usual amount of first raise in dollars.}
#'   \item{bonus}{Numeric indicator for whether new hires receive a cash bonus.}
#'   \item{pct_affected}{Percentage of workers that would receive a raise if
#'   minimum wage were raised to $5.05 per hour.}
#'   \item{employee_benefit}{Factor describing what kind of benefits employees
#'   receive (e.g. free meals).}
#'   \item{opening_hour}{Hour at which restaurant opens (on 0-12 numeric scale).}
#'   \item{hours_open}{Number of hours store is open per day.}
#'   \item{price_soda}{Price of a medium soda at this store, including tax.}
#'   \item{price_fries}{Price of small fries at this store, including tax.}
#'   \item{price_entree}{Price of an entree at this store, including tax.}
#'   \item{num_registers}{Number of cash registers at this store.}
#'   \item{num_reg_11am}{Number of cash registers open at 11:00 AM at this store.}
#'   \item{type_2nd_intvw}{Factor describing how second interview was conducted.}
#'   \item{num_callbacks_2}{Number of callbacks during second stage of data
#'   collection.}
#'   \item{num_ft_employees_2}{Number of full-time employees at store during
#'   second stage of data collection.}
#'   \item}{num_pt_employees_2}{Number of part-time employees at store during
#'   second stage of data collection.}
#'   \item{num_managers_2}{Number of managers at store during second stage of
#'   data collection.}
#'   }
#'  @source Card, D., \& Krueger, A. B. (1994). Minimum Wages and Employment:
#'  A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania. The
#'  American Economic Review*, 84(4), 772-793. Full dataset available as a
#'  download from
#'   \href{https://davidcard.berkeley.edu/data_sets.html}{David Card's website}.
"fastfood1"
