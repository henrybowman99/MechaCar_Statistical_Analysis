library(dplyr)
# read in MechaCar csv
MechaCar_df <- read.csv(file = 'Mechacar_mpg.csv', check.names=F, stringsAsFactors = F)
## linear regression to predict MPG
car_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df) 
car_regression
summary(car_regression)
