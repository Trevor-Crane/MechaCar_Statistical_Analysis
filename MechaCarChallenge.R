library(dplyr) #Load Package
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F) # Import and read csv
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) # Perform Multiple Linear Regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) # Generate summary statistics

Suspension_Coil <- read.csv('Suspension_Coil.csv', check.names=F, stringsAsFactors=F) #Import and read csv 
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # Create summary statistics for PSI column
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # Create summary statistics for PSI column per lot

t.test(Suspension_Coil$PSI, mu=1500) # Perform a t-test across all manufacturing lots
t.test(subset(Suspension_Coil,Manufacturing_Lot=='Lot1')$PSI, mu=1500) #Perform a t-test for lot 1
t.test(subset(Suspension_Coil,Manufacturing_Lot=='Lot2')$PSI, mu=1500) #Perform a t-test for lot 2
t.test(subset(Suspension_Coil,Manufacturing_Lot=='Lot3')$PSI, mu=1500) #Perform a t-test for lot 3
