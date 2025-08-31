##Set working directory 
setwd("C:/Users/shaky/Desktop/Rasal/PS")

##Import the dataset
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)


## Renaming the column and use it
names(Delivery_Times)[1] <- "Delivery_Time"
times <- as.numeric(Delivery_Times$Delivery_Time)

##Define class intervals on [20, 70)
breaks <- seq(20, 70, length.out = 10)

## Histogram
hist(times,
     breaks = breaks,
     right  = FALSE,
     col    = "lightblue",
     border = "black",
     xlab   = "Delivery Time (minutes)",
     ylab   = "Frequency",
     main   = "Histogram of Delivery Times (9 Right-Open Classes, 20–70)")

## Frequency table
cut_times <- cut(times, breaks = breaks, right = FALSE, include.lowest = TRUE)
freq <- as.numeric(table(cut_times))
cum_freq <- cumsum(freq)

print(freq)
print(cum_freq)

## Cumulative frequency polygon 
class_right_edges <- breaks[-1]  

plot(class_right_edges, cum_freq,
     type = "o",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     main = "Ogive (Cumulative Frequency Polygon)\nRight-Open Classes [20,70)",
     ylim = c(0, max(cum_freq)))
