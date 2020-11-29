flights[flights$month == 1 & flights$day == 1, ]

filter(flights, month == 1, day == 1)

arrange(flights, desc(month))

renamed <- rename(flights, tail_num = tailnum) 
names(flights)
names(renamed)


ggplot(mtcars,
       aes(x = hp, 
           y = mpg)) +
  geom_point(size = 3,
             aes(color = cyl)) +
  facet_grid(vs ~ cyl)
names(mtcars)
head(mtcars)``