# Visualization
library(lattice)
dotplot(wc.at$AT, main = "dot plot of AT", col = 'dodgerblue4')
boxplot(wc.at$Waist,main = "Box plot of waist", col ='red')

# Regression equation
scan<-lm(AT~Waist, data = wc.at)
summary(scan)
predt = predict(scan)
predt 
nwdataset <-data.frame(wc.at,predt, "Error" = wc.at$AT-predt)
nwdataset
