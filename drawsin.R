drawsin <- function(type = "h", col = "red"){
  x <- 1:100
  x <- x / 10
  y <- sin(x)
  plot(x,y,type = type, col = col)
}
