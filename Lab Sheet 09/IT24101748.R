setwd("C://Users//ryasa//Desktop//IT24101748")

# Generate random sample of size 25
baking_times <- rnorm(25, mean = 45, sd = 2)


# One-sample t-test
test_result <- t.test(baking_times, alternative = "less", mu = 46, conf.level = 0.95)
