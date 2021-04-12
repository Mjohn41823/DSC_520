# Assignment: ASSIGNMENT 4 part 1
# Name: Johnson, Everett
# Date: 2021-4-11




setwd("C:/Users/Matt/Desktop")

#identifies columns/oberservations Count,Score,Section
scores <- read.csv("scores.csv")
df = data.frame(scores)

#identifies Count and Score as int, Section as chr
str(df)

#Holds Sports 

library(dplyr)
library(ggplot2)

sports <- filter(df, Section == "Sports")
show(sports)

regular <- filter(df, Section == "Regular")
show(regular)

ggplot(data=sports) + geom_point(mapping = aes(x =Count, y=Score))               
ggplot(data=regular) + geom_point(mapping = aes(x =Count, y=Score))   
mean(sports$Score)
mean(regular$Score)

