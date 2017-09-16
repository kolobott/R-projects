#Primary Research Question:
#In 2012, which variable had the strongest linear relationship with Earnings:  Ride Percentage or Cup Points?
library(SDSFoundations)
bull <- BullRiders
#Create a dataset which contains riders that participated in at least one event in 2012.
new_bull <- bull[bull$Events12 > 0, ]
#Make a histogram to visualize the distribution of Earnings for 2012.
hist(new_bull$Earnings12, main='Histogram of Earnings for 2012', xlab='Earnings for 2012', breaks=15)
#Generate the appropriate descriptive statistics for this distribution.
#The appropriate descriptive statistics are median for center of distribution and IQR for shape of distribution.
#The shape of the Earnings distribution for 2012 is positively skewed.
#fivenum: min Q1 median Q3 max
fivenum(new_bull$Earnings12)
IQR(new_bull$Earnings12)
median(new_bull$Earnings12)
#Average amount earned by a bull rider is 147952.3. The highest amount earned by a bull rider is 1464475.61.
#Make a correlation matrix for Earnings12, RidePer12 and CupPoints12.
names <- c('Earnings12', 'RidePer12', 'CupPoints12')
cor(new_bull[ , names])
#Plot a scatterplot for Earnings12 with each variable of interest.  Check for outliers.
plot(new_bull$RidePer12, new_bull$Earnings12, xlab='Ride Percentage of 2012', ylab='Earnings of 2012', main='Scatterplot')
abline(lm(new_bull$Earnings12~new_bull$RidePer12))
#We have one outliar
new_bull[new_bull$Earnings12 > 1000000, ]
#Our data without an outliar
new_bull <- new_bull[new_bull$Earnings12 < 1000000, ]
cor(new_bull[ , names])
#Determine which variable has the strongest linear relationship with Earnings12.
#The strongest linear relationship with Earnings12 has CupPoints12: 0.657 with outliar and 0.893 without an outliar
#Conclusions:
#An initial examination of the relationships between Ride Percentage (RidePer) and Earnings, 
#and Cup Points (CupPoints) and Earnings showed that Cup Points had the  stronger relationship to Earnings. 
#Ride Percentage and Earnings showed a correlation value of 0.593 
#while Cup Points and Earnings had a correlation value of 0.657 .
#Visual examination showed an  outliar in both relationships — a rider who has earned over 1 million dollars.
#Removal of this increased the initial relationship: Ride Percentage and Earnings now had a correlation value of 0.804
#and Cup Points and Earnings had a correlation value of 0.893 .  
#Cup Points still had the higher relationship to Earnings. 
#Visual examination showed a good linear relationship for both Ride Percentage and Cup Points, 
#indicating the correct use of the correlation coefficient.

