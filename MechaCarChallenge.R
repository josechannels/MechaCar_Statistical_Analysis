library(tidyverse)

# Challenge 1

Mechacar <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mechacar) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mechacar)) #generate summary statistics

# Challenge 2

SuspCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- SuspCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

lot_summary <- SuspCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

# Challenge 3

t.test(SuspCoil$PSI,mu=1500) #compare the sample mean of all lots to the population mean of 1500

filter_lot1 <- subset(SuspCoil, Manufacturing_Lot == "Lot1") #filter by lot number
t.test(filter_lot1$PSI,mu=1500) #compare the sample mean of lot1 to the population mean of 1500

filter_lot2 <- subset(SuspCoil, Manufacturing_Lot == "Lot2") #filter by lot number
t.test(filter_lot2$PSI,mu=1500) #compare the sample mean of lot2 to the population mean of 1500

filter_lot3 <- subset(SuspCoil, Manufacturing_Lot == "Lot3") #filter by lot number
t.test(filter_lot3$PSI,mu=1500) #compare the sample mean of lot3 to the population mean of 1500

