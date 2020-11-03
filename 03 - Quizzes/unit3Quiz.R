library(tidyverse)

# Q1 - x <- scan() will make an object called x after an empty line has been entered on the commandline.
  x <- scan()

# Q2 - read.table(file.choose(),header=T) is a function that assumes that the file being read does not contain a header. (T/F)
  headerTest <- read.table("02 - Assignments\\Unit 03\\ASWELLS.csv", header = T)
  names(headerTest)

# Q3 - The number of deaths in row 18 of the data is …
  q3 <- read.table("http://www.bio.ic.ac.uk/research/mjcraw/therbook/data/cancer.txt", header = T)
  nrow(q3)
  
# Q4 - What function would we use to find the working directory?
  getwd()
  
# Q7 - To read in the file “grapes.txt” in the temp directory, you need to call which of the following functions?
  rt <- function(x) read.table(paste("c:\\temp\\", x, ".txt", 
                                     sep=""), 
                               header = TRUE)
  