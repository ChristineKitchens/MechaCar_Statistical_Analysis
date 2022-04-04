
# 0 - Install Libraries ---------------------------------------------------
install.packages("dplyr")


# 1 - Load Libraries ------------------------------------------------------
library(dplyr)


# 3 - Read in Data File ---------------------------------------------------
mechaCarMpg_df <- read.csv("../data/MechaCar_mpg.csv")
suspensionCoil_df <- read.csv("../data/Suspension_Coil.csv")


# 4 - Linear Regression to Predict MPG ------------------------------------
# Print output to file instead of console
sink("mpg_lm_output.txt")

# Write multiple regression to determine if correlation between mpg and other metrics
mpg_lm <- mechaCarMpg_df %>% 
  lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD)

summary(mpg_lm)

# Return to printing output to console
sink()

# 5 - Summary Statistics on Suspension Coils ------------------------------
# Retrieve summary statistics for entire Suspension_Coil data set
total_summary <- suspensionCoil_df %>%
  summarize(Mean_PSI = mean(PSI),
            Median_PSI = median(PSI),
            Variance_PSI = var(PSI),
            SD_PSI = sd(PSI))

total_summary

# Group data set by lot and retrieve summary statistics
lot_summary <- suspensionCoil_df %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean_PSI = mean(PSI),
            Median_PSI = median(PSI),
            Variance_PSI = var(PSI),
            SD_PSI = sd(PSI),
            .groups = 'keep')

lot_summary

write.csv(total_summary, "total_summary.csv", row.names = FALSE)
write.csv(lot_summary, "lot_summary.csv", row.names = FALSE)

# 6 - T-Tests on Suspension Coils -----------------------------------------
# Print output to file instead of console
sink("ttest_output.txt")

# Determine if PSI across all manufacturing lots is statistically different
# from the pop. mean of 1500.
t.test(suspensionCoil_df$PSI, mu = 1500)

# Create subsets of data for each lot
Lot1_df <- suspensionCoil_df %>% filter(Manufacturing_Lot == "Lot1")
Lot2_df <- suspensionCoil_df %>% filter(Manufacturing_Lot == "Lot2")
Lot3_df <- suspensionCoil_df %>% filter(Manufacturing_Lot == "Lot3")

# Determine if PSI of Lot 1 differs from pop. mean of 1500.
t.test(Lot1_df$PSI, mu = 1500)

# Determine if PSI of Lot 2 differs from pop. mean of 1500.
t.test(Lot2_df$PSI, mu = 1500)

# Determine if PSI of Lot 3 differs from pop. mean of 1500.
t.test(Lot3_df$PSI, mu = 1500)

# Return to printing output to console
sink()



