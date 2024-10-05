# Suppose a company wants to estimate the demand for a given price of plastic product, 
# for example x = $31. Then, using the fitted linear regression equation, what will be 
# the demand (quantity of product)?


# set datas
id <- 1:9
sales_price <- c(16, 18, 20, 23, 26, 28, 30, 33, 35)
demand <- c(1200, 1150, 950, 830, 800, 760, 700, 690, 670)
Xi2 <- c(256, 324, 400, 529, 676, 784, 900, 1089, 1225)
Yi <- c(1440000, 1322500, 902500, 688900, 640000, 577600, 490000, 476100, 448900)
XiYi <- c(19200, 20700, 19000, 19090, 20800, 21280, 21000, 22770, 23450)

# create dataframe
data <- data.frame(
    ID = id,
    Column1 = sales_price,
    Column2 = demand,
    Column3 = Xi2,
    Column4 = Yi,
    Column5 = XiYi
)

# calculate totals
totals <- data.frame(
    ID = "Total",
    Column1 = sum(sales_price),
    Column2 = sum(demand),
    Column3 = sum(Xi2),
    Column4 = sum(Yi),
    Column5 = sum(XiYi)
)

data <- rbind(data, totals)

# calculate median
x_median <- mean(sales_price)
y_median <- mean(demand)

# calculate coeficient
numerator <- totals$Column5 - length(sales_price) * (x_median * y_median)

denominator <- totals$Column3 - length(sales_price) * (x_median)^2

coeficient_a <- numerator / denominator
coeficient_b <- y_median - (coeficient_a * x_median)

# estimate y when x = 31
x_value <- 31
estimate_y <- coeficient_a * x_value + coeficient_b

cat("Coeficient a:", coeficient_a, "\n")
cat("Coeficient b:", coeficient_b, "\n")
cat("Estimatted Y value when X = ", x_value, ":", estimate_y, "\n")