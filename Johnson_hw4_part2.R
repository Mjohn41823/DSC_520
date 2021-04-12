setwd("C:/Users/Matt/Desktop")
house<- read.csv("acs-14-1yr-s0201.csv")

a = matrix(c(1:3),nrow=5,ncol=3)
apply(a, 1:2,mean)

agg = aggregate(house,
                by = list(house$RacesReported, house$Id),
                FUN = mean)


library(plyr)
ddply(house, "RacesReported", function(x){
  mean.count <- mean(x$RacesReported)
  sd.count <- sd(x$RacesReported)
  cv <- sd.count/mean.count
  data.frame(cv.count = cv)
})


