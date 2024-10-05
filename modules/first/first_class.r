library(datasets)
library(DescTools)

data <- cars

calculate_media <- mean(cars$speed)

calculate_speed_mode <- Mode(cars$speed)
calculate_dist_mode <- Mode(cars$dist)

calculate_speed_median <- median(cars$speed)
calculate_dist_median <- median(cars$dist)

sd_speed <- sd(cars$speed)
sd_dist <- sd(cars$dist)

cor_speed_dist <- cor(cars$speed, cars$dist)
cor_speed_dist_test <- cor.test(cars$speed, cars$dist)

speed_sample <- sample(1:50, 10, replace = FALSE)
samples <- data[speed_sample, ]
