fun=function(x){
return(max(x)-min(x))
}
fun(c(-5,3,2,-5,2,5,8,11,12))
#1.Create a function that accepts an integer vector and returns the count of those data elements that are both positive and even.
func1=function(x){
return(sum(x>0 & x%%2==0))
}
func1(c(-5,3,2,-5,2,5,8,11,12))

#2.Create a function that accepts an integer matrix and returns the count of those data elements that are divisible by 4.dimension=3x3
func2=function(x){
return(sum(x%%4==0))
}
mat=matrix(sample(-10:10,9),3,3)
mat
func2(mat)

#3.Create a function that accepts a vector of strings and returns the number of characters present in each string of that vector.
func3=function(x){
return(nchar(x))
}
v=c('AMAN','SAHU')
func3(v)

a=readline("Enter a number: ")
class(a)
A=as.integer(readline("Enter a number: "))

A=124561
#Write an R prog to find the Sum of the digits of a given number
sum=0
while(A>0){
rem=A%%10
sum=sum+rem
A=A%/%10
}
sum
#5.Write an R prog to check of a given i/p number is perfect or not.
I=as.integer(readline("Enter a number: "))
num=6
x=1
sum=0
while(x<num){
if(num%%x==0){
y=x
sum=sum+y
}
x=x+1
}
sum
#6.Write an R prog to evaluate the following series Sum=1+11+111+... upto n terms.
n=as.integer(readline("Enter a number: "))
temp=0
s=0
while(n>0){
temp=temp*10+1
temp=temp+1
s=s+temp
n=n-1}
s
#7.Tribonacci series upto n terms.
