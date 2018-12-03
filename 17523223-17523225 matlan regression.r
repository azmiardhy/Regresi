
matlan = read.csv("cities2.csv")
matlan

model <-lm(Area ~ Food, data=matlan)
summary(model)

plot(Area ~ Food, data=matlan)
abline(model, col = "green", lwd = 1)

predict(model, data.frame(Food = 70))

poly_model <- lm(Area ~ poly(Food,degree=2), data = matlan)
poly_model

x <- with(matlan, seq(min(Food), max(Food), length.out=2000))
y <- predict(poly_model, newdata = data.frame(Food = x))

plot(Area ~ Food, data = matlan)
lines(x, y, col = "green")
