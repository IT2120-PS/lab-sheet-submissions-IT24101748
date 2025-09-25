#setting working directory
setwd("C://Users//ryasa//Desktop//IT24101748")

#queston 01 part 01
# Distribution of X
# Binomial with n=50, p=0.85

#part 02
#probabilities p(x>=47)
pbinom(46, 50, 0.85, lower.tail = TRUE)  
# P(X <= 46)
1 - pbinom(46, 50, 0.85, lower.tail = TRUE)


#question 02 part01
# X=number of calls recieved in one hour

#q2 part 02
# Distribution of X
# Poisson with lambda=12

#q2 part 03
# Probability P(X = 15)
dpois(15, 12)







