#' Class Survey Data
#'
#' @description This data set contains responses to a class survey.
#'
#' The class survey sent to students included questions regarding
#' academic status, current world events, COVID-19 variants, their personal lives
#' and whether one would fight a duck-sized horse or a horse-sized duck.
#'
#' @format A tbl_df with with 552 rows and 23 variables:
#' \describe{
#'
#'   \item{time_at_cal}{number of years/semesters spent at UC Berkeley}
#'   \item{major}{declared or intended major}
#'   \item{coding_exp_words}{degree of coding experience on a phrased scale}
#'   \item{coding_exp_scale}{degree of coding experience on a scale of 1 to 10}
#'   \item{languages}{programming languages used among those who have coding experience}
#'   \item{favorite_cal}{favorite thing about attending UC Berkeley}
#'   \item{piercings}{number of body piercings}
#'   \item{pets_and_siblings}{number of (combined) pets and siblings}
#'   \item{diet}{dietary practice in terms of eating plants/animals}
#'   \item{study_place}{favorite place to study on the UC Berkeley campus}
#'   \item{olympics}{favorite Winter Olympic sport}
#'   \item{season}{favorite season in the year}
#'   \item{mts_beach}{preference for being at mountains or the beach}
#'   \item{coffee_tea}{preference for coffee or tea}
#'   \item{boba}{favorite boba tea shop in Berkeley}
#'   \item{tech_relationships}{degree of agreement with the statement: "Technology is destructive to interpersonal relationships" on a scale of 1 to 10}
#'   \item{climate}{degree of agreement with the statement: "Humanity will be able to use its engineering prowess to counteract the effects of climate change" on a scale of 1 to 10}
#'   \item{crypto}{degree of agreement with the statement: "Cryptocurrency will play a dominant role in the global financial system" on a scale of 1 to 10}
#'   \item{more_remote}{stated probability that the Spring 2022 semester at UC Berkeley will remain remote for more than two weeks}
#'   \item{remote_sem}{stated probability that the Spring 2022 semester at UC Berkeley will be conducted entirely remotely}
#'   \item{covid_fall}{stated probability that another COVID variant (other than Delta, Omicron) will disrupt class instruction in Fall 2022}
#'   \item{hotdogs}{answer to the question: "Are hotdogs sandwiches?"}
#'   \item{horse_duck}{answer to the question: "Who would you rather fight: a horse-sized duck or a duck-sized horse?"}
#' }
#' @source The data are adapted and cleaned from a Google Form.
#'
#'
"class_survey"
