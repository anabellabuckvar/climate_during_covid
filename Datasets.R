install.packages("tidyverse")
library(tidyverse)

global_covid <- read.csv(file = 'Global_Mobility_Report.csv')

us_covid <- global_covid %>%
  filter(country_region_code == "US")

write.csv(us_covid,'us_covid.csv')

YCOM <- read.csv(file = 'YCOM_2019_Data.csv')

social_distancing <- read.csv(file = 'State Social Distancing Actions.csv')
