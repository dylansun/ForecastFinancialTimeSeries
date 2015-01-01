dat <- read.csv("data/fancy.csv")
souvenir_ts <- ts(dat, frequency = 12, start = c(1987,1))
souvenir_dts <- decompose(souvenir_ts)
plot(souvenir_dts)

#
getSymbols("000538.sz")
plot(ts(`000538.SZ`))
saveSymbols(`000538.SZ`, file.path = "data/")

#seasonalplot
a <- `000538.SZ`$`000538.SZ.Close`
b <- to.monthly(a)
c <- b$a.Open
d <- ts(c$a.Open, start = c(2007,1), frequency = 12)

# install forecast package if not installed
# install.packages("forecast)
# library(forecast)

# see ?seasonplot for additional information
seasonplot(x = d, col = 1:6, year.labels = TRUE, year.labels.left = TRUE, main = "Yearly Plot for 000538")

# monthplot
monthplot(d, main="yunnan baiyao powder monthly plot", ylab = "Price", xaxt = "n")
