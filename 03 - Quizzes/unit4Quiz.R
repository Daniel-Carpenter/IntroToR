
# 2 - To reference the second value of the fourth component we would use:
  Lst <- list(name = "Fred", 
              wife = "Mary", 
              no.children = 3, 
              child.ages = c(4, 7, 9))
  Lst[[4]][2]
  
# 3 - The number of children can be found by using Lst$no.children
  Lst$no.children
  
# 4 - Lst[[“name”]] gives the same output as Lst$name
  Lst[["name"]]
  Lst$name
  
# 5 - Add a new component to Lst
  Lst3 <- Lst
  Lst3[5] <- list( v=c(1,2,3))
  Lst3
  Lst2 <- c(Lst, list(v=c(1,2,3)))
  Lst2
  
  
# 9 - The following is part of the data frame “worms” – 
  # to get the summary information of worms for each category 
  # of vegetation one would use the following function
  categoryVar = "UrbanPop"
  
  by(USArrests, USArrests[categoryVar], summary)  
  
  
  
  