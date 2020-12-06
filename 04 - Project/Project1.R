# Daniel Carpenter

library(s20x)
library(tidyverse)

# Introduction ======================================================================

  ## TODO

# Data ==============================================================================

  ## TODO

  ## Theme
    DBC_Theme <- theme(
      # All Font  Size
      text                = element_text(size  = 11,
                                         colour  = "grey25"),
      
      # Panel
      panel.background    = element_rect(fill    = "white", 
                                         colour  = "white"),
      panel.border        = element_rect(fill    = NA,
                                         color   = "grey90"),
      panel.grid.major.x  = element_line(linetype = "solid",
                                         color   = "grey95",
                                         size    = 0.2),
      panel.grid.major.y  = element_line(linetype = "solid",
                                         color   = "grey90", 
                                         size    = 0.2),
      
      # Main Title
      plot.title          = element_text(size    = 16,
                                         hjust   = 0),
      plot.subtitle       = element_text(size    = 13,
                                         hjust   = 0),
      
      # Axis Titles
      axis.text           = element_text(size    = 11),
      axis.title          = element_text(size    = 12),
      
      legend.background   = element_rect(fill    = "grey97",
                                         colour  = "grey94",
                                         size    = .40),
      legend.text         = element_text(colour  = "grey15"),
      legend.position     = "right",
      
      # Margin
      plot.margin         = margin(t = 15, 
                                   b = 30, 
                                   r = 30, 
                                   l = 30, 
                                   unit = "pt"))
    theme_set(DBC_Theme)
  
  ## Create unique plot function ----------------------------------------------------
  
    xName <- names(x)

    plotFun <- function(y, yName, 
                        x, xName, 
                        sizeVar, sizeVarName, 
                        colVar, colVarName,
                        titleVar) 
    {
      plot <- ggplot(
                    # Data
                      mtcars, 
                    
                    # Aesthetic Mapping
                      aes(x, y, 
                         color  = colVar,
                         size   = sizeVar)) +
        
                    # Add Scatter Layer
                      geom_point(alpha = 2/5) +  
                    
                    # Add Linear Estimation
                      geom_smooth(method  = "lm", 
                                  formula = y ~ x,
                                  color   = "grey35") +
                    
                    # Titles
                      labs(title     = titleVar,
                           subtitle  = " ",
                           x         = xName,
                           y         = yName,
                           col       = colVarName,
                           size      = sizeVarName) +
                    
                    # Theme
                      theme_get()
        
        
      return(plot)
    }
  
  ## Call plot function
    plotFun(mtcars$mpg,   "Miles per Gallon", 
            mtcars$wt,    "Weight of Vehicle",
            mtcars$disp,  "Displacement (cub. inches)", 
            mtcars$cyl,   "Number of Cylinders",
            "The Relationship between MPG and Weight of Vehicle")
    

# Theory Used =======================================================================

  ## TODO

# Application of SLR to the mtcars data set =========================================

## Make SLR function ----------------------------------------------------------------
  
  myslr <- function(y, x)
  {
    return(lm(y ~ x))
  }

## Invoke a function ----------------------------------------------------------------

  
  # Call function on x and y
  
    y.lm <- myslr(mtcars$mpg, mtcars$wt)
  
# Bootstrap =========================================================================

## Make Bootstrap function ----------------------------------------------------------

## Bootstrap Plots ------------------------------------------------------------------

## Commandline ----------------------------------------------------------------------

## File -----------------------------------------------------------------------------

## Invoke function on mtcars dataset ------------------------------------------------