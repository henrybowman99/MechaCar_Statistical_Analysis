# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

![MPG Regression](https://user-images.githubusercontent.com/95651156/163482923-8d44b2d5-c2f0-4903-9ab1-507902b142e2.png)


The results from the above multiple regression show that two of the variables -- vehicle length and ground clearance -- have a stastistically significant impact on MPG. Specifically, a one unit increase in vehicle length is expected to increase mpg by 6.367 miles and a one unit increase in ground clearance is expected to increase MPG by 3.546 miles. The remaining variables (outside of the intercept) do not have a statistically significant coefficient. The slope of this linear model is not zero, as demonstrated by the R-Squared value of 0.7149. Consequently, I conclude that the model does an adequate job of predicting MPG. In particular, the model does an especially strong job of predicting how vehicle length and ground_clearance will impact MPG.

## Summary Statistics on Suspension Coils

### Total PSI Summary

![total summary](https://user-images.githubusercontent.com/95651156/163511029-c5b9be2a-11bd-49c1-bee1-fb27ecaff787.png)

The above table displays the summary statistics for the PSI of the suspension coils of all 150 vehicles in the suspension data. The overall sample variance is 62.29, which means that the sample as a whole satisfies the 100 PSI variance threshold.

### PSI Summary by Lot

![lot summary](https://user-images.githubusercontent.com/95651156/163511549-b131cc65-b8b4-4892-b9fa-9e65ae98412b.png)

The above table displays the summary statistics for the PSI of the suspension coils grouped by lot. I see that lot 1 (PSI variance of 0.98) and lot 2 (PSI variance of 7.47) both comfortably stay under the 100 PSI variance threshold, while lot 3 (PSI variance of 170.29) exceeds the threshold.
