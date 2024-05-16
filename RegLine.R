x=c(132,129,120,113.2,105,92,84,83.2,88.4,59,80,81.5,70,69.2)
y=c(46,48,51,52.1,54,52,59,58.7,61.6,64,61.4,54.6,58.8,58)
sxy=sum((x-mean(x))*(y-mean(y)))
sxx=sum((x-mean(x))^2)
syy=sum((y-mean(y))^2)
b=sxy/syy
b
a=mean(x)-b*mean(y)
a

#PLOT-1
plot(x,y)+abline(lm(y~x))
lm(y~x)

b1=sxy/sxx
b1
a1=mean(y)-b*mean(x)
a1

#PLOT-2
plot(y,x)+abline(lm(x~y))
lm(x~y)


#2Q
x=c(26.8,25.4,28.9,23.6,27.7,23.9,24.7,28.1,26.9,27.4,22.6,25.6)
y=c(26.5,27.3,24.2,27.1,23.6,25.9,26.3,22.5,21.7,21.4,25.8,24.9)
sxy=sum((x-mean(x))*(y-mean(y)))
sxx=sum((x-mean(x))^2)
syy=sum((y-mean(y))^2)
b=sxy/syy
b
a=mean(x)-b*mean(y)
a

#PLOT-3
plot(x,y)+abline(lm(y~x))
lm(y~x)

b1=sxy/sxx
b1
a1=mean(y)-b*mean(x)
a1

#PLOT-4
plot(y,x)+abline(lm(x~y))
lm(x~y)
