# MechaCar Statistical Analysis

## Overview
Mock exercise statistically comparing performance metrics of various versions of a vehicle prototype (MechaCar).

## Statistical Analysis
### Linear Regression to Predict MPG
According to the summary of the linear model (depicted below), the vehicle_length and ground_clearance variables provided a non-random amount of variance to the mpg values in the dataset. 

Given that the adjusted R-squared value is 0.6825, the slope of the linear model is considered to be non-zero. A slope of 0 would indicate an approximately horizontal best-fit line, which would yield an R-squared of 0. Conversely, a slope of 1 will yield an R-squared value of 1. Therefore, given our adjusted R-squared (which accounts for our multiple predictor variables) is 0.6825, we can safely say our slope is non-zero.

Finally, the summary output of the linear model suggests our model effectively predicts the mpg of MechaCar protoypes. F-statistics are a good indicator of how effectively the independant variables of the model predict the dependent variable. The further an F-statistic is from 1, the stronger the relationship between the predictor and response variables. Given that our F-statistic is 22.07, our model effectively predicts the mpg of MechaCar prototypes.


![Summary of Multiple Linear Regression](images/mpg_lm_output.png)

### Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. While current total manufacturing data meets this design specification (i.e. variance = 62.29), not all individual lots do so. Lots 1 and  2 meet required specs (i.e. variance of 0.98 and 7.47, respectively), Lot 3 has a variance of 170.29, which fails to meet the spec.

![Summary Statistics of All Suspension Data](images/total_summary.png)

![Summary Statistics of Suspension Data by Lot](images/lot_summary.png)

### T-Tests on Suspension Coils
One way t-tests were used to assess whether the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch. 

The null hypothesis in each case is that there is no difference between sample mean and the population mean. The alternative hypothesis in each case is that there is a statistically significant difference between the sample mean and the population mean.

The t-tests for the full, Lot 1, and Lot 2 datasets failed to reject the null hypothesis (i.e. the p value > 0.05 in all cases). Screenshots of outputs are below as references.

![T-Test of Suspension Coil Data - All](images/total_ttest_output.png)

![T-Test of Suspension Coil Data - Lot 1](images/lot1_ttest_output.png)

![T-Test of Suspension Coil Data - Lot 2](images/lot2_ttest_output.png)

However, the t-test for the Lot 3 data yielded a p-value of 0.04168. Because the p value < 0.05, the null hypothesis is rejected. A screenshot of the output can be seen below for reference.

![T-Test of Suspension Coil Data - Lot 3](images/lot3_ttest_output.png)

## Study Design: MechaCar vs Competition
  To determine how the MechaCar performs against competitors, a study could be conducted that compares the following metrics: vehicle cost and fuel efficiency. These metrics could be compared across various combinations of manufacturer and vehicle type (e.g. sedan, hybrid, truck, etc).
  
  Since the study would involve testing for differences across various group combinations, a two-way ANOVA for each metric would be appropriate to assess differences in cost and fuel efficiency across the manufacturer/type combinations. The null hypothesis for the statisical test would be that there is no statistical difference in metric mean values between the different manufacturer/type groups. The alternative hypothesis would be that there is a difference in metric mean values between some/all of the different manufacturer/type combinations.
  
  This study would require a dataset that contains all the aforementioned factors. Further, the data for the metrics being compared would need to be roughly normally distributed to satisfy the requirements for an ANOVA test. The dataset would also need multiple records for each manufacturer/type group to ensure sample groups are representative.

## Resources
- Data
  - [MechaCar_mpg.csv](data/MechaCar_mpg.csv)
  - [Suspension_Coil.csv](data/Suspension_Coil.csv)
- Software
  - R
- Scripts
  - [MechaCarChallenge.R](R/MechaCarChallenge.R)
