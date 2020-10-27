library(tidyverse)
library(s20x)

# Q1 - Get weights data
  weights <- apples.df$Weight
  sortedWeights <- sort(weights)
  
  # COunt of Weights less than 1000
  sum(weights < 1000)

# Q2 - Make matrix of 26 cols and 4 rows from weights data
  matrix <- matrix(sortedWeights, 
                   nrow = 26, 
                   ncol = 4)
  # Print
  matrix

# Q3 - Sum n elements of a vector (inclusive beg and end)
  
  sumElements <- function(vector, start, end)
  {
    return(sum(vector[start:end]))
  }
  
  # Print
  sumElements(weights, 1, 20)

# Q4 - Calc projectile
  projectile <- function(u, t, a)
  {
    return(u * t + 1/2 * a * t^2)
  }
  
  projectile(10, 4, 3)
  
  
  
  
  