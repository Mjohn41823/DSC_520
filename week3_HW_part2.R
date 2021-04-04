# Assignment: ASSIGNMENT 3.1
# Name: Johnson, Everett
# Date: 2021-4-2

setwd("C:/Users/Matt/Desktop")
acs_df <- read.csv("acs-14-1yr-s0201.csv")
library(ggplot2)
str(acs_df)
nrow(acs_df)
ncol(acs_df)
ggplot(acs_df, aes(HSDegree)) + geom_histogram(bins=10)+ggtitle("Histogram")+ ylab("number") + xlab("count")
ggplot(acs_df, aes(HSDegree)) +  geom_density()
library(pastecs)
stat.desc(acs_df)
ggplot(acs_df, aes(HSDegree)) +  geom_density()

