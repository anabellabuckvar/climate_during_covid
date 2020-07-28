modall_res <- augment(modall)

ggplot(data = modall_res, mapping = aes(x = .std.resid)) + 
  geom_histogram(binwidth = 1) + 
  labs(x = "Residuals", y = "Count",
       title = "Residuals are looking beautiful")

ggplot(data = modall_res, mapping = aes(x = .fitted, y = .std.resid)) + 
  geom_point() + labs(x = "Fitted Values", y = "Residuals", 
                      title = "Variance is homogenous")

#install.packages("olsrr")
#library(olsrr)
#ols_coll_diag(modall)

# Split the data into training and test set
set.seed(123)
training.samples <- new_state$score.y %>%
  createDataPartition(p = 0.8, list = FALSE)
train.data  <- new_state[training.samples, ]
test.data <- new_state[-training.samples, ]

# Make predictions
predictions <- modall %>% predict(test.data)
# Model performance
data.frame(
  RMSE = RMSE(predictions, test.data$score.y),
  R2 = R2(predictions, test.data$score.y)
)

car::vif(modall)

formula <- as.formula(score.y ~ grocery_and_pharmacy_percent_change_from_baseline + retail_and_recreation_percent_change_from_baseline + parks_percent_change_from_baseline +  transit_stations_percent_change_from_baseline + (grocery_and_pharmacy_percent_change_from_baseline * retail_and_recreation_percent_change_from_baseline) + workplaces_percent_change_from_baseline + residential_percent_change_from_baseline + status_of_reopening + stay_at_home_order + mandatory_quarantine_for_travelers + non_essential_business_closures + large_gatherings_ban + restaurant_limits + bar_closures + face_covering_requirement + primary_election_postponement + TotalPop, data = new_state)


ld.vars <- attributes(alias(modall)$Complete)$dimnames[[1]]
ld.vars


formula.new <- as.formula(
  paste(
    paste(deparse(formula), collapse=""), 
    paste(ld.vars, collapse="-"),
    sep="-"
  )
)

