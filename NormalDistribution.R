x=seq(20,80,length=200)
y=dnorm(x,mean=50,sd=10)
plot(x,y,type="l")

x=seq(-3,3,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l")
x=seq(-3,0,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(-3,x,0),c(0,y,0),col="red")
pnorm(0,mean=0,sd=1)

#1.mean=60,sd=4
#a P(x>=68)
1-pnorm(68,mean=60,sd=4)
#b. P(x<55)
pnorm(55,60,4)

#1.mean=170,sd=30
#(a)P(x>230)
1-pnorm(230,170,30)
#(b) pnorm(230) 

p=1-pnorm(230,170,30)
pbinom(7,300,p,lower.tail=FALSE)

#2.mean=50,sd=5,P(42<x<52)
pnorm(52,50,5)-pnorm(42,50,5)
#2.
x=rnorm(20,mean=572,sd=51)
x
mean(x)
sd(x)

hist(x)

#1.mean=100,sd=15
#a,IQ<125
a=pnorm(125,100,15)
a*100
#b.IQ>110
b=1-pnorm(110,100,15)
b*100
#c.110<IQ<115
c=pnorm(125,100,15)-pnorm(110,100,15)
c*100
#d.
qnorm(0.25,100,15)
#e
qnorm(0.25,2,3)
#f
qnorm(0.25,100,15,lower.tail=TRUE)
#g
qnorm(0.25,100,15,lower.tail=FALSE)
#h
qnorm(0.25,100,15)