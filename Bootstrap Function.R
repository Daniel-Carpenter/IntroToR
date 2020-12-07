
library(s20x)
library(tidyverse)
library(formattable)


myboot <- function(iter   = 10000, # num iterations
                   x,              # dataset
                   fun    = "var", #
                   alpha  = 0.05,  # 95% confidence
                   cx     = 1.5,
                   ...
                   )
{
  # Get Sample size
    n = length(x)
  
  # Create Sample
    y = sample(x, 
               n * iter,
               replace = TRUE)
    
  # Form Matrix from sample
    rs.mat = matrix(y, # data from sampling
                    nrow  = n,
                    ncol  = iter,
                    byrow = TRUE) # sort by row

  # xstat
    xstat = apply(rs.mat, 2, fun) # vector containing iter vals
    
  # Form confidence interval
    ci = quantile(xstat,
                  c(alpha / 2,
                    1 - alpha / 2)
                    )
  
  # Create a histogram from Bootstrap sampling
    para <-  hist(
                  xstat,
                  freq = FALSE, # along numberline, not freq
                  las  = 1,
                  main = paste0("Histogram of Bootstrap Sample Statistics",
                                "\n",
                                "Alpha = ", alpha, "; ",
                                "Iters = ", comma(iter, digits = 0)),
                  col  = alpha("skyblue3", 2/5),
                  ...)
}

# Invoke `myboot` function

  # Random sample
    set.seed(39)
    sam = rnorm(25, mean  = 25, sd = 10)
    
  # Call function
    myboot(iter  = 10000,
           x     = sam,
           alpha = 0.05,
           cx    = 1.5,
           xlab  = "Variance")
    


    












