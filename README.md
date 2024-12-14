# Comprehensive Analysis Repository

This repository contains three distinct projects focusing on marathon performance analysis, smoking cessation strategies in Major Depressive Disorder (MDD), and statistical simulation studies for optimal study design.

## Projects Overview

### Project 1: Marathon Performance Analysis

#### Overview
This project analyzes the effects of age, sex, and environmental conditions on marathon performance, utilizing data from major marathons over the past 15-20 years. By leveraging historical data from five major marathons, the analyses focus on how these variables impact athletic outcomes.

#### Prerequisites
Before you begin the analysis, ensure that R is installed on your machine along with the following packages:

- `ggplot2`
- `randomForest`
- `dplyr`
- `xgboost`
- `corrplot`

You can install these required packages using R commands:

```r
install.packages("ggplot2")
install.packages("randomForest")
install.packages("dplyr")
install.packages("xgboost")
install.packages("corrplot")

# Project 2: Smoking Cessation and Psychological Influences in MDD

## Overview
This project explores how baseline psychological and behavioral characteristics affect the success rates of smoking cessation interventions, specifically in individuals with Major Depressive Disorder (MDD). The study aims to enhance personalized treatment strategies to improve cessation success rates by investigating interactions between psychological profiles, treatment types, and pharmacotherapy.

## Prerequisites
Before you begin the analysis, ensure that R is installed on your machine along with the necessary packages for statistical modeling and data visualization:

- `ggplot2`
- `caret`
- `e1071`
- `nnet`
- `MASS`

You can install these required packages using the following R commands:

```r
install.packages("ggplot2")
install.packages("caret")
install.packages("e1071")
install.packages("nnet")
install.packages("MASS")


# Project 3: Statistical Simulation Study

## Overview
This project focuses on running statistical simulations to determine the optimal study design under budget constraints. The simulations compare normal and Poisson distributions using a variety of cost parameters. The project includes multiple simulations aimed at:

- Estimating the mean squared error (MSE) of beta estimates under normal and Poisson models.
- Optimizing the study design by adjusting the number of clusters and observations per cluster to stay within a set budget.
- Comparing the impact of cost ratios on MSE.

## Prerequisites
Before you begin the simulations, ensure that R is installed on your machine along with the following packages:

- `ggplot2`
- `plotly`
- `gt`
- `dplyr`
- `lme4`
- `tidyverse`
- `parallel`
- `gridExtra`

You can install these required packages using the following R command:

```r
install.packages(c("ggplot2", "plotly", "gt", "dplyr", "lme4", "tidyverse", "parallel", "gridExtra"))
