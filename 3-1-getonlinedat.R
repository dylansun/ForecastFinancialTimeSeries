getSysbols("^IXIC", src = "yahoo")
#getSymbols("MSFT",src = "google", from = "2010-1-1", to = Sys.Date())
saveSymbols(list("IXIC"),file.path = "data/")

#get from local 
getSymbols("IXIC", src = "RData", dir = "data/", extension = "RData")

getSymbols("^SSEC")
saveSymbols(list("SSEC"),file.path = "data/")

candleChart(to.monthly(IXIC), theme = "white")
