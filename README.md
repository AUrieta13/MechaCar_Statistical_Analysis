# MechaCar_Statistical_Analysis

# Overview of Analysis
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a       summary interpretation of the findings.

## Deliverables:
1. Linear Regression to Predict MPG
2. Summary Statistics on Suspension Coils
3. T-Test on Suspension Coils
4. Design a Study Comparing the MechCar to the Competition

## Deliverable 1: Linear Regression to Predict MPG:
- Statistical Summary:
![deliverable 1 ](https://user-images.githubusercontent.com/90146132/152897593-27570e1e-417f-496a-aaa8-9252cd9e4a95.png)

  Our result coefficients were an estimate of 6.267 for vehicle_length, 0.0012 for vehicle_length, 0.0688 for spoiler_angle, 3.546 for ground_clearance,
and -3.411 for AWD and an intercept of -104.

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  By looking at our statistical summary, we are able to identify that p-value of vehicle_length, vehicle_weight, and ground_clearance are all values that are indicative of a significant impact on the mpg on our dataset. 
- Is the slope of the linear model considered to be zero? Why or why not?
  Reviewing the P-value of the linear model, 5.35e-11, we can conclude that it is indeed a value that indicates that there is enough evidence to reject the null hypothesis that slope is not zero.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  When looking at our calculated multiple r-squared value, 0.7149 or 71%, we can conclude that at this percentage all of our predictions regarding mpg of vehicles are determined by our model. This would indicate this linear model does predict the mpg of MechCar prototypes effectively. 
  
## Deliverable 2: Summary Statistics on Suspension Coils:
- Statistical Summaries:
![deliverable 2 lot_summary](https://user-images.githubusercontent.com/90146132/152902262-f7a650c8-a136-46c5-b2e3-a85e7b5f172f.png)

![deliverable 2 total_summary](https://user-images.githubusercontent.com/90146132/152902275-7edbf54d-6e93-4076-8080-bb48e3e1c862.png)

  Two dataframes have been created with the calculated central tendencies. 
  
 - The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  Looking at both of our dataframes and comparing the variance for all manfacturing lots it is ~ 62 PSI making the value within 100 pounds per square inch, meeting the specifications. When comparing each lot variance PSI, we begin to see an outlier between all three lots. Lot1 and Lot2 variance of suspension coils are within our desired value. In contrast, Lot3 clearly has a much larger variance value that does exceed 100 pounds per square inch. This does not meet the specifications we want, and this could be due to inconsistency of PSI values or outliers within Lot3 with causes the variance of suspension coils to increase in the overall lot variance PSI value. 
  ![PLT_PSI_LOT](https://user-images.githubusercontent.com/90146132/152904318-7f2a789f-a25f-413a-93c9-62c686088c71.png)

## Deliverable 3: T-Tests on Suspension Coils:
- Statistical Summary: The one-sample t-test is a statistical hypothesis test used to determine whether an unknown population mean is different from a specific value.
  ![t-test sus_coil](https://user-images.githubusercontent.com/90146132/152905396-7587ea40-67b5-4eb7-80d4-964ea2047187.png)
  Looking at the t-test for all manufacturing lots, specifically the p-value, we can conclude that the p-value 0.06 is high than 0.05 significance p-value of 0.05. This implys that there is not enough evidence to reject our null hypothesis, meaning that the PSI across all manufacturing lots are statistically similar to the population mean of 1,500 pounds per square inch.
  ![deliverable 3 t-test](https://user-images.githubusercontent.com/90146132/152904259-894991cb-4db1-404a-99c8-e7b6a0e35eb8.png)
  A one sample t-test was calculated for each lot for the MechaCar, to determine if the PSI for each manufacturing lot was statistically different from the population mean of 1,500 pounds per square inch. Lot1 and Lot2 both had p-values that were greater than the significance p-value of 0.05. Since both values are greater than the significant p-value, we cannot reject the null hypothesis which means there is no statistical difference to the population mean of 1,500 pounds per square inch. Lot3 has a p-value, 0.04, which is a smaller value than the significant p-value therefore accepting the alternative hypothesis that the population mean is not equal to population mean of 1,500 pounds per square inch. When we compared the variance values per lot previously, the numbers caluclated were indicative of this outcome in our t-test rejecting the null hypothesis for Lot3.
  
## Deliverable 4: Design a Study Comparing the MechaCar to the Competition:

- In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

-- What metric or metrics are you going to test?
  In my design for a statistical study comparing MechaCar performance with competition, I would test vehicle metrics including highway fuel efficiency, maintenance cost, residual value, and selling price of the vehicle as those are some of the most important things potential buyers consider before purchasing a vehicle.
-- What is the null hypothesis or alternative hypothesis?
  The null hypothesis would be that MechaCar is priced correctly with competitors of similar measured metrics.
  The alternative hypothesis would be that MechaCar is not priced correctly with competitor of similar measured metrics.
-- What statistical test would you use to test the hypothesis? And why?
  Since we are looking at more than 2 independent variables and one dependent variable that are continous, I would use the statistical test multiple linear regression.
-- What data is needed to run the statistical test?
  To run the statistical test we need to calculate our dependent variable (selling price) using our independent variables (highway fuel efficiency, maintenance cost, and residual value) for MechaCar and the competitor vehicle. Comparing the variance of the dependent variable with these independent variables will help determine whether or not we can reject the null hypothesis. 

  
