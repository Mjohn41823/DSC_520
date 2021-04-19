library("dplyr")
setwd("C:/Users/Matt/Desktop")

#identifies columns/oberservations Count,Score,Section
scores <- read.csv("scores.csv")

scores %>%
  group_by(Section) %>%
  summarize(n())

scores %>%
  mutate(Section = Section2) %>%
  summarize(Section2())
  
scores %>%
  group_by(Section) %>%
  filter(Section > "10")

scores %>%
  select(Section)

scores %>%
  arrange(Section)

library("purrr")

scores %>%
  compact("Score")

scores %>%
  keep("Scores", function(x)x>10)

cbind(scores, "new_column")

rbind(scores, "new_column")

x <- "Split this string"
strsplit(x," ")

n <-"cOMBINE"
f <-"This String"
s <- cbind(n, f)
print(s)
