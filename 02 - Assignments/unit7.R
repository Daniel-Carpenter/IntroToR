library(s20x)
# data(package="s20x")
data(fire.df)
head(fire.df)


myData <- function(df, n)
{
  df[1:n, ]
}

myData(fire.df, 10)




# Make linear regression plot qith annotations
plotWText <- function(y, x) 
{
  # Base plot
  plot(y ~ x, pch = 22, bg = "Blue")
  
  # Annotations
  text(x, y, paste("(",x, " , ", y,")"))
  
  # Linear regression
  y.lm = lm(y ~ x)
  abline(y.lm, lwd = 1.5, col = "Red")
  
  # Mean of x and y
  list(xm = mean(x), ym = mean(y))
}

plotWText(fire.df$damage, fire.df$distance)






