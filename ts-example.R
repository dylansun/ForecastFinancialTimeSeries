#Learn to use 'ts' object
souvenir <- scan("http://robjhyndman.com/tsdldata/data/fancy.dat")
class(souvenir)
# start: start time
# frequency: sample frequency per year 
souvenirtimeseries <- ts(souvenir, frequency = 12, start = c(1987,1))
souvenirtimeseries
#plot(souvenirtimeseries)
plot.ts(souvenirtimeseries)

souvenirtimeseries <- log(souvenirtimeseries)
plot.ts(souvenirtimeseries)
