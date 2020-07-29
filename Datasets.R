install.packages("tidyverse")
library(tidyverse)

#modified Google dataset containing only US entries, no global
global_covid <- read.csv(file = 'Global_Mobility_Report.csv')
us_covid <- global_covid %>%
  filter(country_region_code == "US")
write.csv(us_covid,'us_covid.csv')

#climate data
YCOM <- read.csv(file = 'YCOM_2019_Data.csv')

#social factors dataset
social_distancing <- read.csv(file = 'State Social Distancing Actions.csv')

#dataset combining climate variables, climate score, and COVID factors by state
write.csv(new_state,'new_state.csv')

#new_state except with no NAs
new_new_state <- read.csv(file = 'new_new_state.csv')
