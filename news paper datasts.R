# Visualization
library(lattice)
dotplot(NewspaperData$sunday, main = "Dot plot of Sunday", col= "dodgerblue4")
dotplot(NewspaperData$daily, main = "Dot plot of daily", col = 'red')
boxplot(NewspaperData$sunday, col = 'dodgerblue4')
boxplot(NewspaperData$daily, main = "boxplot of daily", col = 'red', xlab = 'daily')


# Regression Equation
# Syntex model<-lm(y~x, data = datasetname)

colnames(NewspaperData)
model <- lm(sunday~daily, data = NewspaperData)
summary(model)

sun = 13.84+(1.34*200)
sun
newdata = data.frame(daily =200)
sun1 = predict(model,newdata = newdata)
sun1
pred = predict(model)
pred
Finaldata <-data.frame(NewspaperData,pred, "Error"= NewspaperData$sunday-pred)
Finaldata
