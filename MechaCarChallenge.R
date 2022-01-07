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
