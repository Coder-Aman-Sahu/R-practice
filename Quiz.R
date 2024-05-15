#22BCE7224
#AMAN SAHU
#Q1.Let a=5 ,b=6 Create a function to swap a and b.

swap= function(a,b){
  temp = a
  a = b
  b = temp
  return(c(a, b))
}
swap(5,6)
swap(0,99)


#Q2.Create a function to find the sum of cubes of the numbers from 1 to 5.
cubes = function(x){
  sum = 0
  for (i in 1:x) {
    sum = sum+i^3
  }
  return(sum)
}
cubes(5)
cubes(10)

#Q3.x=c(10,12,14,15,20,25) ,y=c(25,28,29,28,34,37)
#Find a=summation((xi-mean(x)(yi-mean(y))/summation(xi-mean(x))^2

x=c(10, 12, 14, 15, 20, 25)
y=c(25, 28, 29, 28, 34, 37)
a = function(x, y) {  
  a = sum(((x - mean(x)) * (y - mean(y)))) / sum((x - mean(x))^2)
  return(a)
}
a(x,y)
dotchart(x,y)
