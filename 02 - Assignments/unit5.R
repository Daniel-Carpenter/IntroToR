library(s20x)
data(course.df)
# 1 - we would classify the variable “Grade” as => Ordinal
  head(course.df)

# 2 “Degree” variable is Nominal and therefore qualitative we can make a table of frequencies from it. (TRUE)
  table(course.df$Degree)

# 3 - Is test the dependant or independant variable from below? (Independant, i.e. x var)
  plot(Exam ~ Test, 
       data = course.df)
  
# 4 - How many students are classified as both Non attenders and Bsc candidates?
  tab1 = table(course.df$Attend, course.df$Degree)
  tab1
  barplot(tab1, beside = TRUE)
  # validation
  sum(course.df$Attend == "No" & course.df$Degree == "BSc")
  
# 5 - What kind of plot could be made from both “Degree” and “Stage1” together?
  plot(Degree ~ Stage1, 
       data = course.df)
  
# 6 - validate boxplot
  plot(Exam ~ Degree, 
       data = course.df)
  
# 7 - validate plot
  with(course.df, 
       barplot(table(Gender, Colour), 
               beside = TRUE,
               legend = TRUE))
  
  
  