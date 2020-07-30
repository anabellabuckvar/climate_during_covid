DATASETS...
clim: Yale climate opinions dataset, separated by state (raw)

social_distancing: state social distancing actions (raw)

global_covid: Google’s COVID-19 Global Community Mobility Reports (raw)

us_covid: modification of global_covid; but filtered to only display U.S. states’ entries
state: dataset combining Yale climate variables and COVID-19 factors, separated by state

new_state: modification of state; combines Yale climate variables used to create climate scores, climate scores themselves, and COVID-19 factors, all merged together by state

new_new_state: modification of new_state; contains no missing values (removed any column/variable containing an NA; lost five variables)

no_dc: modification of new_new_state; removed District of Columbia (for visualization purposes, since usmap package does not include DC)



VARIABLES USED TO CALCULATE CLIMATE SCORE (score.y)...
human: percentage of residents surveyed in the Yale Climate Change Project who think global warming is caused by human activity

consensus: percentage of residents surveyed in the Yale Climate Change Project who believe that most scientists think global warming is happening

worried: percentage of residents surveyed in the Yale Climate Change Project who are worried about global warming

futuregen: percentage of residents surveyed in the Yale Climate Change Project who think that global warming will harm future generations

personal: percentage of residents surveyed in the Yale Climate Change Project who think global warming will harm them personally

harmUS: percentage of residents surveyed in the Yale Climate Change Project who think that global warming will harm people in the United States



VARIABLES IN LINEAR REGRESSION MODEL...
score.y: score calculated for each state based on its overall sentiment on climate change (incorporated variables from clim dataset)

transit_stations_percent_change_from_baseline: a state’s average percent change in transit station visit time/frequency over the course of March 15 to July 23, compared to a pre-COVID baseline timeframe of January 3 to February 6

*NOTE: Google defines “transit stations” as subway stations, sea ports, taxi stands, highway rest stops, and car rental agencies

retail_and_recreation_percent_change_from_baseline: a state’s average percent change in retail stores and recreational facilities visit time/frequency over the course of March 15 to July 23, compared to a pre-COVID baseline timeframe of January 3 to February 6

parks_percent_change_from_baseline: a state’s average percent change in parks visit time/frequency over the course of March 15 to July 23, compared to a pre-COVID baseline timeframe of January 3 to February 6

*NOTE: Google defines “parks” as public gardens, castles, national forests, camp grounds, and observation decks 

bar_closures: status of bars in a given state (either “Closed,” “Newly Closed,” “Reopened,” or “New Service Limits”