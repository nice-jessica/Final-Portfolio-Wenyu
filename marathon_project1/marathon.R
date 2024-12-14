
library(ggplot2)
library(randomForest)
library(dplyr)
library(xgboost)

marathon_data <- read.csv("project1.csv")

print(head(data))
table_marathon_summary <- tbl_summary(
  marathon_data,
  by = "Sex",
  type = list(
    all_continuous() ~ "continuous2", 
    all_categorical() ~ "categorical" 
  ),
  statistic = list(
    all_continuous() ~ "{mean} ({sd}), [{min}, {max}]",
    all_categorical() ~ "{n} ({p}%)"
  ),
  label = list(
    Race..0.Boston..1.Chicago..2.NYC..3.TC..4.D. ~ "Race",
    Sex..0.F..1.M. ~ "Sex",
    X.CR ~ "Completion Rate",
    Td..C ~ "Dew Point (°C)",
    Tw..C ~ "Wet Bulb Temp (°C)",
    X.rh ~ "Relative Humidity",
    Tg..C ~ "Globe Temp (°C)",
    SR.W.m2 ~ "Solar Radiation (W/m²)",
    DP ~ "Dew Point",
    Wind ~ "Wind Speed",
    WBGT ~ "Wet Bulb Globe Temp (°C)"
  ),
  digits = list(all_continuous() ~ 2),
  missing = "no" 
)

# Print the summary table
print(table_marathon_summary)

print(marathon_data)

# AIM 1: Scatter plot illustrating marathon performance (%CR) across different age groups and sexes
marathon_data$Sex <- factor(marathon_data$Sex..0.F..1.M., labels = c("Female", "Male"))

ggplot(marathon_data, aes(x=Age..yr., y=X.CR, color=Sex)) +
  geom_point(alpha=0.6) +  
  geom_smooth(method = "loess", se = FALSE) +  # Add loess smoothed trend line without confidence interval
  labs(title = "Marathon Performance (%CR) by Age and Sex",
       x = "Age (years)",
       y = "Performance (%CR)",
       color = "Sex") +
  theme_minimal() +
  theme(legend.title = element_text(face = "bold"))


### AIM 1: Feature importance plot from a Random Forest model
marathon_data <- na.omit(marathon_data)
sum(is.na(marathon_data$X.CR))  # This should return 0

# Fit the Random Forest model
set.seed(123) 
rf_model <- randomForest(X.CR ~ ., data=marathon_data, ntree=500, importance=TRUE)


importance_data <- importance(rf_model, type=1)
print(names(importance_data)) 

race_var_name <- "Race..0.Boston..1.Chicago..2.NYC..3.TC..4.D."
if (race_var_name %in% names(importance_data)) {
  importance_data <- importance_data[!names(importance_data) %in% race_var_name]
} else {
  warning("Race variable name not found in importance data. Check the correct naming and retry.")
}

# Proceed only if importance_data is not empty
if (length(importance_data) > 0) {
  feature_importance <- data.frame(Feature = names(importance_data), Importance = importance_data)
  
  # Create the ggplot
  ggplot(feature_importance, aes(x=reorder(Feature, Importance), y=Importance)) +
    geom_col(fill="steelblue") +
    labs(title="Feature Importance in Marathon Performance Prediction",
         x="Features",
         y="Importance (Increase in MSE)") +
    theme_minimal() +
    theme(axis.text.x=element_text(angle=45, hjust=1))
} else {
  print("No data available in importance_data after filtering. Check earlier steps.")
}


## AIM2: Feature importance
marathon_data$Sex <- as.numeric(factor(marathon_data$Sex..0.F..1.M.)) 

data_matrix <- xgb.DMatrix(data = as.matrix(marathon_data[, c("Age..yr.", "Sex", "Td..C", "Tw..C", "Wind", "WBGT", "SR.W.m2")]),
                           label = marathon_data$X.CR)

params <- list(
  booster = "gbtree",
  objective = "reg:squarederror",
  eta = 0.1,
  gamma = 0,
  max_depth = 6,
  min_child_weight = 1,
  subsample = 0.5,
  colsample_bytree = 0.5
)

set.seed(123)
xgb_model <- xgb.train(params = params, data = data_matrix, nrounds = 100, verbose = 0)

importance_matrix <- xgb.importance(feature_names = colnames(data_matrix), model = xgb_model)
print(importance_matrix) 
xgb.plot.importance(importance_matrix)


## AIM3: Identify the weather parameters (WBGT, Flag conditions, temperature, etc) that have the largest impact on marathon performance
library(ggplot2)
library(dplyr)
library(corrplot)  
library(gtsummary)  # load gtsummary for model tables

correlation_matrix <- cor(marathon_data[, c('X.CR', 'WBGT', 'Td..C', 'Tw..C', 'Wind', 'SR.W.m2')], use = "complete.obs")
corrplot(correlation_matrix, method = "circle")

model <- lm(X.CR ~ WBGT + Td..C + Tw..C + Wind + SR.W.m2, data=marathon_data)
summary(model)
table <- tbl_regression(model)

# Print the table
print(table)

ggplot(marathon_data, aes(x=WBGT, y=X.CR)) +
  geom_point(alpha=0.5) +
  geom_smooth(method="lm", color="blue") +
  labs(title="Effect of WBGT on Marathon Performance",
       x="WBGT (Wet Bulb Globe Temperature)",
       y="Performance (%CR)") +
  theme_minimal()

