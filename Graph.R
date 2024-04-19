#Few simple statistcal measures:
#a.Enter data as 1,2,,,,,10.
data=1:10
data
#b.Find sum of the numbers
sum(data)
#c.Find mean,median.
mean(data)
median(data)
#d.Find sum of squares of these values.
sum(data^2)
#e.Find the value of i/n∑|xi-x|=This is known as mean deviation about mean(MDx)
mean_d=sum(abs(data-mean(data)))/10
#f.Check whether MDx is less than or equal to standard deviation.
mean_d<=sd(data)
#g.Find standard deviation using formula.
sd(data)
sqrt(sum(abs(data-mean(data))^2)/9)

#Graphs Curve()
curve(expr=sin,from=0, to=6*pi)
curve(expr=cos,from=0, to=6*pi)
curve(expr=x^2,from=0, to=100)
curve(expr=x^3,from=0, to=100)
#Plot()
empid=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
age=c(30,37,45,32,50,60,35,32,34,43,32,30,43,50,60)
sex=c(0,1,0,1,1,1,0,1,1,0,0,0,1,0,1)
status=c(1,1,2,1,2,2,1,2,2,2,1,2,1,1,1)
empinfo=data.frame(empid,age,sex,status)
empinfo$sex=factor(empinfo$sex,labels=c("Male","Female"))
empinfo$status=factor(empinfo$status,labels=c("Staff","Faculty"))

plot(empinfo$empid,empinfo$age,type="l",main="age of subjects",xlab="empid",ylab="age in years",col="blue")

x=c(7,8,1,102,62,39)
barplot(x,xlab="x-axis",ylab="y-axis",main="BarChart")


colors = c("green", "orange", "brown")
months = c("Mar", "Apr", "May", "Jun", "Jul")
regions = c("East", "West", "North")
 
Values = matrix(c(2, 9, 3, 11, 9, 4, 8, 7, 3, 12, 5, 2, 8, 10, 11),nrow = 3, ncol = 5, byrow = TRUE)
 
barplot(Values, main = "Total Revenue", names.arg = months,xlab = "Month", ylab = "Revenue",col = colors, beside = TRUE)
legend("topleft", regions, cex = 0.7, fill = colors)