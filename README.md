# MechaCar_Statistical_Analysis
### Mock analysis of car performance data

After you’ve completed the technical analysis for each deliverable, provide a short summary of the results in the README.md of the analysis. For the final deliverable, you’ll write up a short description of the study design for additional statistical analysis. In the written summaries, we would like you to think critically about your analysis, not demonstrate mastery of automotive manufacturing.

------------------------------------------------

## Linear Regression to Predict MPG, and write a short summary using a screenshot of the output from the linear regression, and address the following questions:

![LinearRegressionSummary](https://user-images.githubusercontent.com/21095468/134415498-0b909c71-560b-47ab-916b-8430c27c0939.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Variables with smaller values of Pr(>|t|) in the summary are less likely to contribute random variance. vehicle_length and ground_clearance are the two variables which have significantly small values to reject the null hypothesis.
  
### Is the slope of the linear model considered to be zero? Why or why not?
The p value for our linear regression model is 5.35e-11, much smaller than the assumed signifigance of 0.05, which allows us to reject the null hypothesis and say that the slope of the model is not zero.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The R-squared of our model is 0.7149, which means that it accurately explains about 71.5% of variance, which is reasonably effective, but could see substantial improvement.

--------------------------------------------------------
## Summary Statistics on Suspension Coils

![SuspensionCoilTotals](https://user-images.githubusercontent.com/21095468/134416369-699dd109-5177-43aa-af74-914b19d02177.png)

![SuspensionCoilSummary](https://user-images.githubusercontent.com/21095468/134415533-4101bb97-f32e-4b56-89bb-8b5c10b43f48.png)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The total variance is within acceptable range. However, lots one and two have well within acceptable variance, but lot three has a variance of over 170PSI, which is significantly above the acceptable range.

## T-Tests on Suspension Coils 

![t_tests](https://user-images.githubusercontent.com/21095468/134446201-607dbb04-479a-4045-80a5-0c5ed3cc1c67.png)
### Summary
Lots one and two have p values significantly over the 0.05 significance, which leads us to conclude that the means are statistically similar to 1500, whereas lot three's p value is 0.04, leading us to conclude that the mean value is not 1500. The significantly negative t value leads us to conclude that lot 3's manufacturing consistently produces lower than specified PSI.

## Study Design: MechaCar vs Competition

I think that maintenance cost would be a fascinating study to design due to the difficulty of retriving reliable data I would imagine since it would rely on consumer reporting.

The primary metric being tested would be $ per year spent by clients on maintenance of their vehicles. There are many revealing statisticals tests that could be done with such data, but for these purposes I would like to design a test which would determine the variables which contribute to increased costs of maintenance. Linear regression modeling would be ideal for this, or another kind of multivariate testing if the linear model proved insufficient, and could help us identify which variables led to the most maintenance cost burden on customers. Many kinds of data could be useful for this, but important would be the age of the vehicle, the number of miles on the vehicle, the conditions of roads frequently driven on, the driver's history of traffic violations, weather in the area.. there are likely to be many contributing variables and finding an ideal model would be extremely difficult, but thus interesting. The null or alternative hypothesis in this case would be an arbitrarily decided statistical signifigance of the measured data, null meaning insigificant and alternative meaning significant.
