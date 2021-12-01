depths <- read.delim("day_1_input.txt",header=FALSE)[,1]
sum(diff(depths)>0)
library("zoo")
sum(diff(rollapply(depths,3,mean))>0)