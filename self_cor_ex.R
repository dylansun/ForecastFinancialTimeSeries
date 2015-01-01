x <- rnorm(100)
plot(x, type="l")
lag.plot(x[1:20], lags = 4, set.lags= c(1,3,6,9))
Acf(x)
