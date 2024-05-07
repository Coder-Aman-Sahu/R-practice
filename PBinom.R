#P(X=x) dpois(x,lambda)
#P(x<=x) ppois(x,lambda,lower.tail=TRUE)
#P(X>x) ppois(x,lambda,lower.tail=FALSE)

#1.Example.P(X=0) DPOIS(X,lambda)
#(i)

ans1=dpois(0,1.5)
ans1

#(ii)P(r>2) ppois(x,lambda,lower.tail=FALSE)

ans2=ppois(2,1.5,lower.tail=FALSE)
ans2

#2.Example P(X>10) n=100 ,p=0.05 lambda=n x p = 5
ans2=ppois(10,5,lower.tail=FALSE)
ans2

#Experiments
#1.p=0.001,n=2000,lambda=2
#(a)P(X=3)
ans=dpois(3,2)
ans
#(b)P(X>2)
ans=ppois(2,2,lower.tail=FALSE)
ans

#2.P=0.02,N=100,LAMBDA=2
#(i)P(X=1) 
dpois(1,2) + ppois(1,2,lower.tail=FALSE)
#(ii)P(X=7)
dpois(7,2)
#(iii)P(1<X<8)=P(X>1) + P(X<=7)
ppois(7,2,lower.tail=TRUE)-ppois(1,2,lower.tail=TRUE)

#3.p=0.1,=10,lambda=1
#(a)binom P(X=2)
dbinom(2,10,0.1)
dpois(2,1)

#Question1.p=0.25 ,q=0.75 n=1 ,k=6
dpois(6, 4)

#Question2.
#(a)p=0.005,n=400,lambda=2
dpois(1,2)
#(b)P(X<=3)
ppois(3,2,lower.tail=TRUE)

#Question3
pbinom(7,8000,1/1000)

#Question4 ,avg=3
#(a)P(X=5)
dpois(5,3)
#(b)P(X<3)
ppois(2,3,lower.tail=TRUE)

#Question5 ,n=10,p=0.990
#(a)P(X>10)
ppois(10,9.9,lower.tail=FALSE)
#(b)P(X=12)
dpois(12,9.9)

#Question.6  n=75,p=0.001,lambda=0.075
#(a)P(X=1)
dpois(1,74.25)
#(B)p(X=20)
dpois(20,0.075)
#(c)P(X<10)
ppois(10,0.075,lower.tail=TRUE)

# Question 2
par(mfrow=c(1,2))  # To create a 1x2 grid for subplots

# (a) P(X=1) for Poisson distribution with lambda=2
x1 <- 0:10
y1 <- dpois(x1, 2)
barplot(y1, names.arg=x1, main="Poisson PMF: lambda=2", xlab="X", ylab="Probability")

# (b) P(X<=3) for Poisson distribution with lambda=2
x2 <- 0:10
y2 <- ppois(x2, 2, lower.tail=TRUE)
plot(x2, y2, type="b", main="Poisson CDF: lambda=2", xlab="X", ylab="Cumulative Probability")

# Question 4
par(mfrow=c(1,2))

# (a) P(X=5) for Poisson distribution with lambda=3
x3 <- 0:10
y3 <- dpois(x3, 3)
barplot(y3, names.arg=x3, main="Poisson PMF: lambda=3", xlab="X", ylab="Probability")

# (b) P(X<3) for Poisson distribution with lambda=3
x4 <- 0:10
y4 <- ppois(x4, 3, lower.tail=TRUE)
plot(x4, y4, type="b", main="Poisson CDF: lambda=3", xlab="X", ylab="Cumulative Probability")

# Question 5
par(mfrow=c(1,2))

# (a) P(X>10) for Poisson distribution with lambda=9.9
x5 <- 0:20
y5 <- ppois(x5, 9.9, lower.tail=FALSE)
