library(tidyverse)

# Q1 - Read in data based on what seperator?
  SEPERATOR = ","
  wells <- read.table("02 - Assignments/Unit 03/ASWELLS.csv", sep = SEPERATOR, head = 1)

# Q2 - What are the dimensions of the data set (rows by columns)
  paste0(nrow(wells)," rows by ", ncol(wells), " columns")

# Q3 - The class of "wells" is?
  class(wells)

# Q4 - determine the mean latitude of the wells.
  head(wells)
  mean(wells$LATITUDE)
  
# Q5 - how many wells were in the Duptara UNION.
  sum(wells$UNION == "Duptara")
  df <- wells %>%
    filter(UNION == "Duptara")
  nrow(df)
  
# Q6 - that there is a blank in that cel; what does R do?
  wells.rm <- read.table("02 - Assignments/Unit 03/ASWELLS - rm(LAT).csv", sep = SEPERATOR, head = 1)
  head(wells.rm)  
  
# Q7 - The 6th name in names(wells) is: DEPTH.FT
  
  
