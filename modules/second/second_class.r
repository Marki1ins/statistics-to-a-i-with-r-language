library(datasets)

data <- cars

linear_model <- lm(dist ~ speed, data = data)
summary(linear_model)

new_datas <- data.frame(speed = c(21, 24, 26))
prediction <- predict(linear_model, new_datas, interval = "confidence")