#Primary Research Question:
#Among male artists, is there an association between winning a Grammy and the genre of music that he plays?
library(SDSFoundations)
acl <- AustinCityLimits
#Create a subset of data (only males)
table(acl$Gender)
acl <- acl[acl$Gender == 'M', ]
#Create a table to show the marginal distributions for Genre and Grammy.
grammy <- table(acl$Grammy)
grammy
genre <- table(acl$Genre)
genre
#Create a contingency table to show the conditional distribution for Genre and Grammy.
contable <- table(acl$Grammy, acl$Genre)
contable
#Make a bar chart to better visualize how many artists in each Genre received a Grammy.
barplot(contable, beside = T, legend = T, xlab = 'Genre', ylab = 'Counts', main='Winning a Grammy')
#Calculate P(A):  the probability of winning a Grammy.
prop.table(grammy)
prop.table(genre)
#Calculate P(A|B): the probability of winning Grammy, given the artist's Genre.
prop.table(contable, 2)
#Interpret what these probabilities tell us about the relationship between Genre and winning a Grammy.
#There is an association between winning a Grammy and the Genre of music an artist plays. 
#The probability of winning a Grammy, regardless of Genre, is 43.21 %. 
#However, examination of a contingency table containing both Grammy and Genre showed that the conditional probability of winning a Grammy changes by genre. 
#If an artist is in the Country Genre, the conditional probability of winning a Grammy is 63.64 %, 
#while if an artist is in the Singer-Songwriter Genre, the conditional probability of winning a Grammy is 28.6%. 
#Visual examination of the barplot shows the conditional probabilities of winning a Grammy are not equal across Genres.