library(tidyverse)
library(s20x)

data(apples.df)

df.apples <- apples.df
head(df.apples)

# 1 Use R to find the number of weights less than 1000.
  sum(df.apples$Weight < 1000)

# 2 The mean apple weight is closest to:
  mean(df.apples$Weight)

# 3 The standard deviation of apple weight is closest to:
  sd(df.apples$Weight)
  
# 4 How many apple trees have Rootstock “XVI” and Weight bigger than or equal to 1838? 
  # you may wish to use a Boolean expression within indexing on the data frame.
  sum(  df.apples$Rootstock == "XVI" 
      & df.apples$Weight >= 1838)
  
# 5 How many Female BSc students have an Exam grade larger than 86?
  data(course.df)
  df.course <- course.df
  head(course.df)
  
  sum(  df.course$Gender == "Female" 
      & df.course$Degree == "BSc" 
      & df.course$Exam > 86)
  
# 6 Using the same data set as Q5 – what is the mean test score of Male students who passed?
  df.course.6 <- df.course %>%
    filter(Gender == "Male") %>%
    filter(Pass   == "Yes") 
  
  mean(df.course.6$Test)

# 7 The mean Years.Since for students who were “Female” and passed, obtained an exam grade > 50 and repeated was:
  df.course.7 <- df.course %>%
    filter(Gender == "Female") %>%
    filter(Exam   >   50) %>%
    filter(Repeat == "Yes") %>%
    filter(Pass   == "Yes")
  
  mean(df.course.7$Years.Since)
  
  
# 8 The number of unique degrees represented in course.df 
  # for students who were “Female” and passed, obtained an exam grade > 50 and repeated is:
  df.course.8 <- as.data.frame(with(df.course.7, unique(df.course.7$Degree)))
  df.course.8  
  nrow(df.course.8)
  
  
  
  
  
    