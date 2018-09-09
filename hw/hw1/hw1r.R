#### 4
library(stargazer)

read.table("airfare.txt", header=TRUE ,sep="")
data<-read.table("airfare.txt", header=TRUE ,sep="")


#### 5

names(data)

# data$Stay
# 
# attach(data)
# Stay
# 
# detach(data)
# Stay
# 
# attach(data)

#### 6

# plot(Fare,Distance)
plot(data$Fare,data$Distance,xlab="Cost of Fare", ylab="Distance Traveled",main="Plot of Fare against Distance")
abline(lm(data$Distance~data$Fare), col="red")

# par(mfrow=c(1,2))
# plot(Age,Stay)
# plot(Age,InfctRsk)
# 
# 
# jpeg("joint.jpg")
# par(mfrow=c(1,2))
# plot(Age,Stay)
# plot(Age,InfctRsk)
# dev.off()


#### 7

# lm(Fare~Distance)
result=lm(data$Distance~data$Fare)
summary(result)

stargazer(result, title="Regression Results")
