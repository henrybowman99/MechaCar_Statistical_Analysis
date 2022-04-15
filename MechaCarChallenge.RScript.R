library(dplyr)
# read in MechaCar csv
MechaCar_df <- read.csv(file = 'Mechacar_mpg.csv', check.names=F, stringsAsFactors = F)
## linear regression to predict MPG
car_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df) 
car_regression
summary(car_regression)
# read in suspension csv
suspension_df <- read.csv(file = 'Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
##summarize suspension coil PSI
total_summary <- suspension_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# t-test for suspension PSI
t.test(suspension_df$PSI, mu=1500)

#create separate tables for each lot 
lot1 <- subset(suspension_df, Manufacturing_Lot == 'Lot1')
lot2 <- subset(suspension_df, Manufacturing_Lot == 'Lot2')
lot3 <- subset(suspension_df, Manufacturing_Lot == 'Lot3')

#run t test for each lot
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
