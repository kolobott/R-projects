#Primary Research Question:
#For artists age 30 or older, do female artists play different kinds of music on Austin City Limits than male artists?
library(SDSFoundations)
acl <- AustinCityLimits
artists30 <- acl[acl$Age >= 30, ]
#make tables of marginal distributions 
genre <- table(artists30$Genre)
genre
gender <- table(artists30$Gender)
gender
#create a contingency table for conditional distributions of genre and gender
contable <- table(artists30$Gender, artists30$Genre)
contable
#create a bar plot to vizualize how many males and females play each genre
barplot(contable, beside = T, legend = T, xlab='Genres', ylab='Counts')
#Calculate P(A): the probability of each type of music (genre) being played.
prop.table(genre)
#Calculate P(A|B): the probability of each genre, given the artist’s gender.
prop.table(contable, 1)
#Conclusions:
#The music played on Austin City Limits was grouped into four genres, including Country, Jazz, Rock and Singer-Songwriter. 
#We wanted to examine only those artists who were age 30 or older. 
#Rock was the most frequently played genre, performed by  59.8 % of the Austin City Limits artists. 
#Among female artists, however, only correct 32 % of the artists played Rock music. 
#This difference between the marginal and conditional probabilities suggests that gender and genre are not independent.
#This difference was also evident in the bar plots,
#where it was evident that females were more likely to perform in the Singer-Songwriter category than their male counterparts.