install.packages("tidyverse")
library(tidyverse)

global_covid <- read.csv(file = 'Global_Mobility_Report.csv')

us_covid <- global_covid %>%
  filter(country_region_code == "US")