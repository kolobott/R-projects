#Primary Research Question:
#Denmark is a high-income country in Europe of about 5.5 million people. 
#What is the best-fitting model for growth of internet usage in Denmark since 1990?  
library(SDSFoundations)
wb <- WorldBankData
#Create a variable that represents proportion of the population using the internet
#Subset te dataset that contains data  from Denmark since 1990
denmark <- wb[wb$Country == "Denmark" & wb$year >= 1990, ]
proportion <- denmark$internet.users / denmark$population
#Create a new variable yearsince1990 to  avoid extrapolation
yearsince1990 <- denmark$year - 1990
#Determine the best-fitting model for internet usage from 1990 onward.
expFit(yearsince1990, proportion)
logisticFit(yearsince1990, proportion)
#We see that r^2 for logistic model is much higher than for exponential model
#Conclusions:
#After using both an exponential and a logistic function to model Denmark's growth of internet usage since 1990, 
#we found that the logistic model fit better with a high R-squared value of 0.995, 
#compared to an R-squared value of 0.800 for the exponential model. 
#In addition, it is visually clear from the graphs that the logistic model fit the observed data better than the exponential model. 
#All of this suggests that we should trust predictions from the logistic model more than predictions from the exponential model. 
#The exponential model suggests that in 1990, there was a predicted proportion of 0.00585 of Denmark's population that used internet, 
#with the proportion of internet users increasing by a factor of 1.347 every year after 1990, on average. 
#The logistic model shows that the predicted carrying capacity of the proportion of people who use internet in Denmark was .8967. 
#Since the logistic model fits better, the proportion of internet users in Denmark will probably eventually level off rather than continuing to grow exponentially.
