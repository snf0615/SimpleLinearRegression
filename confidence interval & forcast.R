# y = beta0+beata1*x1+beta2*x2+erreur

#premiere question:

#pour un emsemble d'apprentissage

Xapp=matrix(1:100,nrow=50,ncol=2)
Xapp[,1]=runif(50,0,1)
Xapp[,2]=runif(50,0,1)
y=matrix(1:50,nrow=50,ncol=1)
e=rnorm(50,mean=0,sd=0.5)
for(i in 1:50)
{
	y[i]=Xapp[i,1]+Xapp[i,2]+1+e[i]
}
lm.fit=lm(y~Xapp)
confint(lm.fit)
coef(lm.fit)

#summary(lm.fit)
confint(y)
#deuxieme question:

predict(lm.fit,data.frame(t(Xapp[1,])),interval="confidence",level=0.95)
predict(lm.fit,data.frame(t(Xapp[1,])),interval="predict",level=0.95)


