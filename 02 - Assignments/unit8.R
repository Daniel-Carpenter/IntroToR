library(nycflights13)
library(ggplot2)
library(dplyr)

dim(flights)
head(flights)

# q 1
flights %>% 
  filter( air_time > 60 & distance > 4900) %>% 
  select(carrier) %>% table # make it into a table

# Flights with at least 500 miles
flights %>% 
  filter( distance  >=  500) %>% 
  select(carrier) %>% table

# Condense ggplot without having to make a dataset copy
flights %>% 
  filter( dest == "LAX") %>% 
  select(carrier)  %>% 
  ggplot(aes(carrier)) + geom_bar()

# smooth
by_tailnum <- group_by(flights, tailnum)
delay <- summarise(by_tailnum,
                   count = n(),# AAAAA
                   airtime = mean(air_time, na.rm = TRUE),
                   delay = mean(arr_delay, na.rm = TRUE))

delay <- filter(delay, count >  20, airtime < 100)

ggplot(delay, aes(airtime, delay)) +
  geom_point(aes(size = count), alpha = 1/2) +
  geom_smooth() + # BBBBB
  scale_size_area()