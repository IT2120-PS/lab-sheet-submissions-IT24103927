setwd("C:\\Users\\HSAND\\OneDrive\\Desktop\\PS LAB 5")
# Import dataset
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

# View first few records
head(Delivery_Times)

#2
hist(Delivery_Times$Delivery_Time_.minutes.,
     breaks = seq(20,70,length.out = 10), # 9 intervals
     right = FALSE,                       # right-open intervals [a,b)
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency",
     col = "skyblue",
     border = "black")
     

#4
# Create histogram object to get counts
hist_obj <- hist(times, breaks = breaks, right = FALSE, plot = FALSE)

# Calculate cumulative frequencies
cum_freq <- cumsum(hist_obj$counts)

# Draw ogive (cumulative frequency polygon)
plot(hist_obj$breaks[-1], cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     col = "red")
