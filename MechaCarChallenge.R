# Deliverable One
#3. Use the library() function to load the dplyr package.

library(dplyr)

#4. Import and read in the MechaCar_mpg.csv file as a dataframe.

mechaCar <- read.csv(file = 'MechaCar_mpg.csv', header = TRUE)

#5. Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), 
#and add the dataframe you created in Step 4 as the data parameter.

lm1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mechaCar)

# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm1)

#Deliverable Two
# 2. In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table. 
suspensionCoil <- read.csv(file = 'Suspension_Coil.csv', header = TRUE)

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function 
# to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- suspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column. 
lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


#Deliverable Three
# 1. In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI 
# across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspensionCoil$PSI,mu=1500)

# 2. Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument 
# to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(mu=1500, subset(suspensionCoil$PSI, suspensionCoil$Manufacturing_Lot=="Lot1"))
t.test(mu=1500, subset(suspensionCoil$PSI, suspensionCoil$Manufacturing_Lot=="Lot2"))
t.test(mu=1500, subset(suspensionCoil$PSI, suspensionCoil$Manufacturing_Lot=="Lot3"))