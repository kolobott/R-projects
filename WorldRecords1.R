#Primary Research Question:
#How has the men’s shotput world record changed over time?  What about the women’s world record?
library(SDSFoundations)
wr <- WorldRecords
#Create a subset of the dataset that contains only the World Record cases for men’s shotput.
men <- wr[wr$Event == 'Mens Shotput', ]
#Create a subset that contains only the World Record cases for women's shotput. 
women <- wr[wr$Event == 'Womens Shotput',]
#Create a scatterplot of year and record shotput distance: one for men and one for women.  
plot(men$Year, men$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)', pch=16)
plot(women$Year, women$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
#Confirm from these plots that a linear model is appropriate.  
#Run a linear model for each event and then interpret the results.
linFit(men$Year, men$Record)
linFit(women$Year, women$Record)
#Based on scatterplots of the men’s and women’s world record shotput distance, 
#both of these events follow a strong, positive relationship over time. 
#The men’s world record distance increases by an average of 0.134 meters per year, 
#while the women’s record distance increases by an average of 0.234 meters per year. 
#Because the intercept estimate is the value of the record distance when year is equal to 0, 
#it is not interpretable in the context of the problem. 
#Both linear models fit the data well, with R-squared values for the men’s and women’s models equal to 0.9411 and 0.9623, respectively.
