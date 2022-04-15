# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

![MPG Regression](https://user-images.githubusercontent.com/95651156/163482923-8d44b2d5-c2f0-4903-9ab1-507902b142e2.png)


The results from the above multiple regression show that two of the variables -- vehicle length and ground clearance -- have a stastistically significant impact on MPG. Specifically, a one unit increase in vehicle length is expected to increase mpg by 6.267 miles and a one unit increase in ground clearance is expected to increase MPG by 3.546 miles. The remaining variables (outside of the intercept) do not have a statistically significant coefficient. The slope of this linear model is not zero, as demonstrated by the R-Squared value of 0.7149. Consequently, I conclude that the model does an adequate job of predicting MPG. In particular, the model does an especially strong job of predicting how vehicle length and ground clearance will impact MPG.

## Summary Statistics on Suspension Coils

### Total PSI Summary

![total summary](https://user-images.githubusercontent.com/95651156/163511029-c5b9be2a-11bd-49c1-bee1-fb27ecaff787.png)

The above table displays the summary statistics for the PSI of the suspension coils of all 150 vehicles in the suspension data. The overall sample variance is 62.29, which means that the sample as a whole satisfies the 100 PSI variance threshold.

### PSI Summary by Lot

![lot summary](https://user-images.githubusercontent.com/95651156/163511549-b131cc65-b8b4-4892-b9fa-9e65ae98412b.png)

The above table displays the summary statistics for the PSI of the suspension coils grouped by lot. I see that lot 1 (PSI variance of 0.98) and lot 2 (PSI variance of 7.47) both comfortably stay under the 100 PSI variance threshold, while lot 3 (PSI variance of 170.29) exceeds the threshold.

## T-Tests for Suspension Coils

### Full Sample T-Test

![Full Sample T Test](https://user-images.githubusercontent.com/95651156/163513570-c88d1aab-eb00-4394-9436-15a113768d5f.png)

With a p-value of 0.06028 calculated for the full suspension sample t-test, I do not reject the null hypothesis that the true population mean is equal to 1500 PSI.

### Lot 1 T-Test
![lot 1 t test](https://user-images.githubusercontent.com/95651156/163513919-e1a1643e-8d77-4634-b2df-71b2391a1377.png)

With a p-value of 1 calcualted for the lot 1 t-test, I cannot reject the null hypothesis that the true mean for lot 1 vehicles is equal to 1500 (for any significance level).

### Lot 2 T-Test
![lot 2 t test](https://user-images.githubusercontent.com/95651156/163514365-e287b9b4-b15e-422e-ab59-ad9e1aa5b9c5.png)

With a p-value of .6072 calcualted for the lot 2 t-test, at a 5% significance level I cannot reject the null hypothesis that the true mean for lot 2 vehicles is equal to 1500.

### Lot 3 T-Test
![lot 3 t test](https://user-images.githubusercontent.com/95651156/163515131-efc3cbdb-7d98-4111-ae8c-27ebd18d72b2.png)

With a p-value of 0.04168 calcualted for the lot 3 t-test, at a 5% significance level I reject the null hypothesis that the true mean for lot 3 vehicles is equal to 1500. However, I would not reject the null hypothesis if I were to use a lower significance level such as 0.5%.

## Study Design: MechaCar vs Competition

I would run a test to see if the true mean MPG for MechaCars is statistically different from other manufacturers' competing vehicles. The first step would be to collect a sample of competing cars that includes each car's MPG. I would read this dataset into R and call it competing_cars_df. Next I would establish my null and alternative hypotheses:

H0: There is no statistical difference between the observed MechaCar MPG sample mean and the observed MPG mean from the sample of competing vehicles.

HA: There is a statistical difference between the observed MechaCar MPG sample mean and the observed MPG mean from the sample of competing vehicles.

To test the above hypothesis, I would run a two-sample t-test in R at a 5% significance level. I would use this test because it is the most common test to use when trying to determine if there is a statistical difference between two sample means. The code would be as follows:

t.test(MechaCar_df$MPG, competing_cars_df$MPG)

Then I would examine the results in the console. If the resulting p-value was less than 0.05, I would reject the null hypothesis and conclude that there is a statistical difference between the observed MPG means of the two samples. If it was greater than 0.05 I would fail to reject the null hypothesis and conculde that there is no statistical difference between the MPG means of the two samples. 








