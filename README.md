# Mecha Car Statiscal Analysis

## Overview
Mock exercise statistically comparing performance metrics of a vehicle prototype relevant to existing fleet vehicles.

## Statistical Analysis
### Linear Regression to Predict MPG
According to the summary of the linear model (depicted below), the vehicle_length and ground_clearance variables provided a non-random amount of variance to the mpg values in the dataset. 


![Summary of Multiple Linear Regression](R/mpg_lm_output.txt)


- Is the slope of the linear model considered to be zero? Why or why not?
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

### Summary Statistics on Suspension Coils
![Summary Statistics of All Suspension Data](https://raw.githubusercontent.com/InRegards2Pluto/MechaCar_Statistical_Analysis/main/R/total_summary.csv)

![Summary Statistics of Suspension Data by Lot](https://raw.githubusercontent.com/InRegards2Pluto/MechaCar_Statistical_Analysis/main/R/lot_summary.csv)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### T-Tests on Suspension Coils
- briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

## Study Design: MechaCar vs Competition
- Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
  - What metric or metrics are you going to test?
  - What is the null hypothesis or alternative hypothesis?
  - What statistical test would you use to test the hypothesis? And why?
  - What data is needed to run the statistical test?
