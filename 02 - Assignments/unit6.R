library("s20x")
data("zoo.df")
head(zoo.df)
zoo = within(zoo.df, 
             { 
               nice.day <- factor(nice.day)
               day.type <- factor(day.type)
             }
             )

head(zoo)

# 1
boxplot(sun.yesterday ~ nice.day,
        data = zoo,
        col = rainbow(2),
        main = "A day at the Zoo")

# 2
plot(data = subset(zoo, 
                   tv.ads > 0.4, ),
     attendance ~ tv.ads)

# 3
plot(data = zoo,
     attendance ~ tv.ads,
     pch = 22, # shape with color
     bg = "red1") # color of inside shape

# 4
barplot(table(zoo$nice.day),
        xlab = "Nice Day",
        ylab = "Frequency")














