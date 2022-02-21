library(tidyverse)
library(haven)
library(plyr)
library(tibble)
ppk_raw <- read_sav("https://www.dropbox.com/s/ot9g3zn38iunrpt/PPK_FINAL_CLEANED_PUBLIC.sav?dl=1")

#============#
# Clean data
#============#

# Remove columns
ppk <- ppk_raw %>%
  select(-c(ResponseId, RecordedDate, TYPE, Q2, Q3, Q4, Q5, Q6,
            starts_with("Q12"), starts_with("Q13"),
            starts_with("Q14"), starts_with("Q16"),
            starts_with("Q19"), starts_with("Q23"),
            Q24, Q25))

# Coerce data types
ppk2 <- ppk %>%
  zap_labels() %>%
  na_if(-99) %>%
  mutate(across(c(starts_with("Q7"), starts_with("Q11"),
                  starts_with("Q20"), starts_with("Q22")),
                as.logical))

# Add noise
set.seed(392)
ppk3 <- ppk2 %>%
  sample_frac(size = 1, replace = TRUE)
row_breaks <- seq(from = 1,
                  to = nrow(ppk3),
                  length.out = ncol(ppk3) + 1) %>%
  round() +
  sample(x = -15:15,
         size = ncol(ppk3) + 1,
         replace = TRUE)
row_breaks[1] <- 1
row_breaks[length(row_breaks)] <- nrow(ppk3)

ppk4 <- ppk3
for(i in 1:ncol(ppk3)) {
  tmp <- ppk3[row_breaks[i]:row_breaks[i + 1],]
  tmp[, i] <- sample(pull(tmp[, i]))
  ppk4[row_breaks[i]:row_breaks[i + 1],] <- tmp
}

ppk4 <- ppk4 %>%
  sample_frac(size = 1)

ppk5 <- ppk4



#Q1
num_Q1 = c(1,2,3,4,5)
str_Q1 = c("Freshman", "Sophomore", "Junior","Senior", "Graduate/Professional student")
ppk5$Q1 <- mapvalues(unlist(ppk4$Q1), from = num_Q1, to = str_Q1)
attr(ppk5$Q1, 'label') <- 'What year are you in school at UC Berkeley?'

#Q8
num_Q8 = c(1,2,3,4,5)
str_Q8 = c( "Very likely","Somewhat likely","Neither likely nor unlikely", "Somewhat unlikely", "Very unlikely")
ppk5$Q8 <- mapvalues(unlist(ppk4$Q8), from = num_Q8, to = str_Q8)
attr(ppk5$Q8, 'label') <- 'Likelihood of considering UC Berkeley student housing in the future, if offered'


#Q10
num_Q10 = c(1,2,3,4,5)
str_Q10 = c("Very important", "Somewhat important","Neither important nor unimportant","Somewhat unimportant", "Very unimportant")
ppk5$Q10 <- mapvalues(unlist(ppk4$Q10), from = num_Q10, to = str_Q10)
attr(ppk5$Q10, 'label') <- 'How important is it for UC Berkeley to provide more student housing?'


#Q17
num_Q17 = c(1,2,3,4,5)
str_Q17 = c("Very familiar", "Somewhat familiar","Neither familiar nor unfamiliar","Somewhat unfamiliar", "Very unfamiliar")
ppk5$Q17 <- mapvalues(unlist(ppk4$Q17), from = num_Q17, to = str_Q17)
attr(ppk5$Q17, 'label') <- 'Level of familiarity with the People’s Park Project'

#Q18 add categorical column
num_Q18 = c(1,2,3,4,5,6,7)
str_Q18 = c("Very strongly support", "strongly support", "Somewhat support","Neither support nor oppose","Somewhat oppose", "strongly oppose", "Very strongly oppose")

col_Q18 = which(colnames(ppk5)=="Q18")
Q18_words <- mapvalues(unlist(ppk4$Q18), from = num_Q18, to = str_Q18)
ppk5 <- add_column(ppk5, Q18_words, .after = col_Q18)
attr(ppk5$Q18_words, 'label') <- 'Level of support/opposition for the People’s Park Project (pre)'


#Q21 add categorical column
num_Q21 = c(1,2,3,4,5,6,7)
str_Q21 = c("Very strongly support", "strongly support", "Somewhat support","Neither support nor oppose","Somewhat oppose", "strongly oppose", "Very strongly oppose")

col_Q21 = which(colnames(ppk5)=="Q21")
Q21_words <- mapvalues(unlist(ppk4$Q21), from = num_Q21, to = str_Q21)
ppk5 <- add_column(ppk5, Q21_words, .after = col_Q21)
attr(ppk5$Q21_words, 'label') <- 'Level of support/opposition for the People’s Park Project (post)'

ppk <- ppk5

usethis::use_data(ppk, overwrite = TRUE)
