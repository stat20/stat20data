#' Card & Krueger minimum wage data, panel version
#'
#' Panel employment data collected from New Jersey and
#' Pennsylvania fast food restaurants as part of Card & Krueger's seminal study
#' on minimum wage.  This version of the dataset retains covariate and outcome
#' measures from both waves of data collection (see fastfood1 for a cross-
#' sectional version of the dataset). Of the 410 restaurants
#' originally surveyed, 11 have been excluded here because they were closed
#' or refused to participate during the second wave of data collection.  Missing
#' values have also been imputed.
#'
#'
#' @format A data.frame with 399 rows and 40 variables:
#' \describe{
#'   \item{store_id}{Unique ID for each fast food restaurant.}
#'   \item{chain}{Factor describing which fast food chain restaurant belongs to.}
#'   \item{comp_owned}{Numeric indicator for whether store is company-owned.}
#'   \item{state}{Factor describing state (NJ or PA) in which store is located.}
#'   \item{region}{Factor, geographic region where store is located.}
#'   \item{NJshore}{Numeric indicator for whether store is on the Jersey Shore.}
#'   \item{num_callbacks}{Number of callbacks during first stage of data collection.}
#'   \item{num_ft_employees}{Number of full-time employees at store during
#'   first stage of data collection.}
#'   \item}{num_pt_employees}{Number of part-time employees at store during
#'   first stage of data collection.}
#'   \item{num_managers}{Number of managers at store during first stage of
#'   data collection.}
#'   \item{starting_wage}{Starting wage in dollars during first stage of
#'   data collection.}
#'   \item{months_to_first_raise}{Usual number of months an employee works
#'   before receiving their first raise during first stage of
#'   data collection.}
#'   \item{first_raise_amt}{Usual amount of first raise in dollars during first stage of
#'   data collection.}
#'   \item{bonus}{Numeric indicator for whether new hires receive a cash bonus during
#'   first stage of data collection.}
#'   \item{pct_affected}{Percentage of workers that would receive a raise if
#'   minimum wage were raised to $5.05 per hour.}
#'   \item{employee_benefit}{Factor describing what kind of benefits employees
#'   receive (e.g. free meals) during first stage of
#'   data collection.}
#'   \item{opening_hour}{Hour at which restaurant opens (on 0-12 numeric scale) during first stage of
#'   data collection.}
#'   \item{hours_open}{Number of hours store is open per day during first stage of
#'   data collection.}
#'   \item{price_soda}{Price of a medium soda at this store, including tax, during first stage of
#'   data collection.}
#'   \item{price_fries}{Price of small fries at this store, including tax, during first stage of
#'   data collection.}
#'   \item{price_entree}{Price of an entree at this store, including tax, during first stage of
#'   data collection.}
#'   \item{num_registers}{Number of cash registers at this store, during first stage of
#'   data collection.}
#'   \item{num_reg_11am}{Number of cash registers open at 11:00 AM at this store during first stage of
#'   data collection.}
#'   \item{type_2nd_intvw}{Factor describing how second interview was conducted during first stage of
#'   data collection.}
#'   \item{num_callbacks_2}{Number of callbacks during second stage of data
#'   collection.}
#'   \item{num_ft_employees_2}{Number of full-time employees at store during
#'   second stage of data collection.}
#'   \item}{num_pt_employees_2}{Number of part-time employees at store during
#'   second stage of data collection.}
#'   \item{num_managers_2}{Number of managers at store during second stage of
#'   data collection.}
#'   \item{starting_wage_2}{Starting wage in dollars during second stage of
#'   data collection.}
#'   \item{months_to_first_raise_2}{Usual number of months an employee works
#'   before receiving their first raise during second stage of
#'   data collection.}
#'   \item{first_raise_amt_2}{Usual amount of first raise in dollars during second stage of
#'   data collection.}
#'   \item{special_2}{Numeric indicator for whether new hires participate in a
#'   special program during second stage of data collection.}
#'   \item{pct_affected_2}{Percentage of workers that would receive a raise if
#'   minimum wage were raised to $5.05 per hour.}
#'   \item{employee_benefit_2}{Factor describing what kind of benefits employees
#'   receive (e.g. free meals) during second stage of
#'   data collection.}
#'   \item{opening_hour_2}{Hour at which restaurant opens (on 0-12 numeric scale) during second stage of
#'   data collection.}
#'   \item{hours_open_2}{Number of hours store is open per day during second stage of
#'   data collection.}
#'   \item{price_soda_2}{Price of a medium soda at this store, including tax, during second stage of
#'   data collection.}
#'   \item{price_fries_2}{Price of small fries at this store, including tax, during second stage of
#'   data collection.}
#'   \item{price_entree_2}{Price of an entree at this store, including tax, during second stage of
#'   data collection.}
#'   \item{num_registers_2}{Number of cash registers at this store, during second stage of
#'   data collection.}
#'   \item{num_reg_11am_2}{Number of cash registers open at 11:00 AM at this store during second stage of
#'   data collection.}
#'   }
#'  @source Card, D., \& Krueger, A. B. (1994). Minimum Wages and Employment:
#'  A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania. The
#'  American Economic Review*, 84(4), 772-793. Full dataset available as a
#'  download from
#'   \href{https://davidcard.berkeley.edu/data_sets.html}{David Card's website}.
"fastfood2"
