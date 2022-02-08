#Deliverable 1: Linear Regression to Predict MPG 

library(dplyr)

#import and read mechacar_mpg.csv
mecha_mpg <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

#perform linear regression with lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
   data = mecha_mpg)

#Use summary() function to determine the p-value and the r-squared value for the
#linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
            ground_clearance + AWD,data = mecha_mpg))


#Deliverable 2: Create Visualizations for the Trip Analysis

#import and read suspension_coil.csv file
sus_coil <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

#create total_summary data frame using summarize() function to get central tendencies
total_summary <- sus_coil %>% summarize(Mean_PSI=mean(PSI),
                                        Median_PSI=median(PSI),
                                        Var_PSI=var(PSI),
                                        Std_Dev_PSI=sd(PSI), 
                                       .groups='keep')


#create lot_summary data frame using the group_by() and the summarize() function
#group each manufacturing lot by central tendencies.
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                      Median_PSI=median(PSI),
                                                                      Var_PSI=var(PSI),
                                                                      Std_Dev_PSI=sd(PSI), 
                                                                      .groups='keep')


#extra, plot a boxplot
plt_PSI <- ggplot(sus_coil, aes(y=PSI))
plt_PSI + geom_boxplot()

plt_PSI_lot <- ggplot(sus_coil, aes(x=Manufacturing_Lot, y=PSI))
plt_PSI_lot + geom_boxplot()

#Deliverable 3: T-Tests on Suspension Coils

#use t.test() function to determine if the PSI across all manufacturing lots
# are statistically different from the population mean of 1,500 lbs/square inch
t.test(sus_coil$PSI, mu=1500)

#using t.test() function and its subset()argument to determine if the PSI for
#each manufacturing lot is statistically different from the population mean
#of 1500 lbs/square inch

lot1 <- subset(sus_coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(sus_coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(sus_coil, Manufacturing_Lot == "Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)



























