library(dplyr)
#Create data frame from .csv, working dir must be set
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
MechaCar   
#Perform Multiple Linear Regression to see effect of variables on mpg
model<-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)
model
summary(model)
#P value is extremely small, which means that one of these variables likely has an effect on mpg.
#The p-value is pretty high which means that the data taken here is well representative of the data (but still not perfect)
#Plot variables for ease of understanding
install.packages("car")
library(car)
avPlots(model)

#Move on to challenge number 2. Import Suspension_Coil.csv
SusCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
SusCoil 
#Create summary data frame for column: PSI
total_summary <- SusCoil %>% group_by(mean(PSI)) %>% summarize(Mean=mean(SusCoil$PSI), Median=median(SusCoil$PSI), Variance=var(SusCoil$PSI), SD=sd(SusCoil$PSI), .groups = 'keep')
total_summary
#Create summary data frame for column: PSI
lot_summary <- SusCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary

#Challenge 3
# Null: There is no statistical difference between the observed mean and its presumed population mean of 1500
# Alternative: There is no statistical difference between the observed mean and its presumed population mean of 1500
#First: t-test for PSI of entire population
t.test(SusCoil$PSI, mu=1500)
#high p value means we fail to reject the null. Thus there is no statistical difference between the pop and sample means

# Null: There is no statistical difference between the observed mean and its presumed population mean of 1500
# Alternative: There is no statistical difference between the observed mean and its presumed population mean of 1500
# Observed mean: PSI split up by Lot
t.test(SusCoil$PSI, mu=1500,subset=Manufacturing_Lot=='Lot1')
t.test(SusCoil$PSI, mu=1500,subset=Manufacturing_Lot=='Lot2')
t.test(SusCoil$PSI, mu=1500,subset=Manufacturing_Lot=='Lot3')
#Fail to reject the null on all of these, meaning there is no statistical difference between PSI mean by lot and the population mean of 1500
