library(tidyverse)


# Vars
  a = 3
  b = 5 
  c = -4
  x = 2
  y = 7

# Calcs ----------------------------------------

  # Confidence Interval
    confidenceInterval <- function(mean, sigma)
    {
      # Plus or minus 1
      pm <- c(-1, 1)
      
      ci = mean + pm * 1.96 * sigma / 2
      
      return(ci)
    }
  
    ci <- confidenceInterval(3, 1.3)
  
  
  # Roots of a Quadratic  
    rootsOfQuadratic <- function(a, b, c) 
    {
      # Plus or Minus 1
        pm = c(-1, 1)
  
      output <- (-b + pm * sqrt(b^2 - 4 * a * c)) / (2 * a)
      
      return(output)
    }
    
    roots <- rootsOfQuadratic(-2, 5, 6)
    