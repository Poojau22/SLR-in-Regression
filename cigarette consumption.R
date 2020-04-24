cor(CigaretteConsumption[,2:8])
plot(CigaretteConsumption[,2:8])
#Regression Model:-
reg.model<-lm(Sales~Age+HS+Income+Black+Female+Price, data = CigaretteConsumption)
summary(reg.model)
