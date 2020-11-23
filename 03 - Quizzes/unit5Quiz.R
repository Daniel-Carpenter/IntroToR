df <- mtcars


# 2
  x <- df$hp
  y <- df$mpg
  
  plot(x, y,  main = "Points only")
  plot(y ~ x, main = "Regression Only", type = "n")
  
# 3
  abline(lm(y ~ x))
  
  
# 5 places a legend on a graph.
  legend(locator(1), c("legend1","legend2"), pch=c(1,16), col=c("red","blue"))
  
# 7 add text ro graph
  text(200, 25, "x = 200,\ny = 25")