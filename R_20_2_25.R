install.packages("nycflights13")
data("flights", package = "nycflights13")
carriers <- table(flights$carrier)
carriers

x <- rnorm (100)
f <- function(x) 3 + 2 * x
y <- f(x) + 0.5 * rnorm(100)
linear_model <- lm (y ~x)
linear_model
coef(linear_model)
summary(linear_model)
plot(x, y, main = "A simple linear regression")
abline(coef(linear_model ), col = "blue")
predict(linear_model , list(x =c(1,0.5)), se.fit =TRUE)


carriers("flights", package = "nycflights13")
carriers
plot(air_time ~ distance, data =flights,pch= ".",main = "Plot - Flight Speed",
     ylab= "Air Time",xlab="Distance")

lm_model <- lm(air_time ~ distance, data =flights)
summary(lm_model)

plot(air_time ~ distance, data =flights,pch= ".",main = "Regression Plot - Flight Speed",
     ylab= "Air Time",xlab="Distance")
abline(coef(lm_model),col="red")
