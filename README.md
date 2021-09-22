# MechaCar_Statistical_Analysis
### Mock analysis of car performance data

After you’ve completed the technical analysis for each deliverable, provide a short summary of the results in the README.md of the analysis. For the final deliverable, you’ll write up a short description of the study design for additional statistical analysis. In the written summaries, we would like you to think critically about your analysis, not demonstrate mastery of automotive manufacturing.

------------------------------------------------

## Linear Regression to Predict MPG, and write a short summary using a screenshot of the output from the linear regression, and address the following questions:

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Variables with smaller values of Pr(>|t|) in the summary are less likely to contribute random variance. vehicle_length and ground_clearance are the two variables which have significantly small values to reject the null hypothesis.
  
### Is the slope of the linear model considered to be zero? Why or why not?
The p value for our linear regression model is 5.35e-11, much smaller than the assumed signifigance of 0.05, which allows us to reject the null hypothesis and say that the slope of the model is not zero.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The R-squared of our model is 0.7149, which means that it accurately explains about 71.5% of variance, which is reasonably effective, but could see substantial improvement.

--------------------------------------------------------
