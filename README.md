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
