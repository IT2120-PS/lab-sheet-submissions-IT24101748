#setting the working directory
setwd("C://Users//ryasa//Desktop//IT24101748")

#load the datset
bags <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

#rename the col 
names(bags) <- "Weight"

#calculate mean and variance of population
pop_mean <- mean(bags$Weight)
pop_sd   <- sd(bags$Weight)

#25 random variables
set.seed(2120)   # reproducible results
nS <- 25
n  <- 6

samples <- c()
for (i in 1:nS) {
  s <- sample(bags$Weight, n, replace = TRUE)
  samples <- cbind(samples, s)
}
colnames(samples) <- paste0("S", 1:nS)

#mean and sd for each sample space
s.means <- apply(samples, 2, mean)
s.sds   <- apply(samples, 2, sd)

