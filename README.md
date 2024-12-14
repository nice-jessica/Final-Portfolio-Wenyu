# Project: Marathon Data Analysis

## Sub-project 1: Marathon Data Summary

### Description
This sub-project involves summarizing marathon data by sex and generating various descriptive statistics for continuous and categorical variables.

### Libraries Used
- dplyr
- ggplot2
- gtsummary

### Key Functions
- `read.csv()`: To load the marathon data.
- `tbl_summary()`: To generate a descriptive statistics table.
- `print()`: To display the data and summary tables.

### Outputs
- Descriptive statistics table for marathon data.
- Initial rows of the marathon data displayed.

## Sub-project 2: Marathon Performance Prediction

### Description
This sub-project focuses on predicting marathon performance using machine learning models like Random Forest and XGBoost, and visualizing feature importance.

### Libraries Used
- randomForest
- xgboost
- ggplot2

### Key Functions
- `randomForest()`: To train a Random Forest model on marathon data.
- `xgb.train()`: To train an XGBoost model.
- `importance()`, `xgb.importance()`: To extract feature importance from the models.
- `ggplot()`: To visualize feature importance.

### Outputs
- Random Forest and XGBoost models trained on marathon data.
- Plots of feature importance from each model.

## Sub-project 3: Impact of Weather on Marathon Performance

### Description
This sub-project investigates how different weather parameters like temperature and humidity impact marathon performance using regression analysis.

### Libraries Used
- ggplot2
- dplyr
- corrplot
- gtsummary

### Key Functions
- `cor()`, `corrplot()`: To visualize correlations between weather parameters and performance.
- `lm()`: To fit a linear model to assess the impact of weather parameters.
- `tbl_regression()`: To display regression analysis results in a formatted table.
- `ggplot()`: To visualize relationships between weather parameters and marathon performance.

### Outputs
- Correlation matrix of selected variables.
- Regression model summary.
- Visualizations of the effect of weather parameters on performance.
