#9(a)
Auto=read.csv("Auto.csv", na.strings = "?")
New_Auto=Auto[-33:-33,]
New_Auto=New_Auto[-126:-126,]
New_Auto=New_Auto[-329:-329,]
New_Auto=New_Auto[-334:-334,]
New_Auto=New_Auto[-351:-351,]
#ou New_Auto=New_Auto[-c(33,127,331,337,355),]
pairs(Auto)

#9(b)
New_Auto=New_Auto[,-9:-9]
cor(New_Auto)

#9(c)
#exclude name ?
attach(New_Auto)
mul.lm=lm(mpg~cylinders+displacement+horsepower+weight+acceleration+ year+origin)
#ou mul.lm=lm(mpg~cylinders+displacement+horsepower+weight+acceleration+ year+origin,data=New_Auto)
#ou mul.lm=lm(mpg~.-names,data=New_Auto)
Summary(mul.lm)

#9(d)
par(mfrow=c(2,2))
plot(mul.lm)

#9(e)
summary(lm(mpg~cylinders*displacement*horsepower*weight*acceleratio*year*origin,data=New_Auto))

#9(f)
fit.lm1=lm(mpg~log(horsepower),data=New_Auto)
par(mfrow=c(2,2))
plot(fit.lm1)
fit.lm2=lm(mpg~poly(acceleration,2),data=New_Auto)
par(mfrow=c(2,2))
plot(fit.lm2)
fit.lm3=lm(mpg~poly(cylinders,3),data=New_Auto)
par(mfrow=c(2,2))
plot(fit.lm3)
# How to calculate x^0.5 ??

#10(a)
library(ISLR)
mul.fit1=lm(Sales~Price+Urban+US, data=Carseats)
plot(Sales~Price+Urban+US, data=Carseats)
plot(mul.fit1)
attach(Carseats)
contrasts(Urban)
contrasts(US)

#10(e)
library(ISLR)
mul.fit2=lm(Sales~Price+US, data=Carseats)
par(mfrow=c(2,2))
plot(mul.fit2)
#for 10(a)
library(ISLR)
mul.fit1=lm(Sales~Price+Urban+US, data=Carseats)
par(mfrow=c(2,2))
plot(mul.fit1)

#10(f)
confint(mul.fit2)

