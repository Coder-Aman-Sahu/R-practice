#Sring

s='Vijayawada'
#1.Write a R command to count the number of times 'a' appears in s use the Base library.
library(base)
strsplit(s,'a')
strsplit(s,"")
strsplit(s,"")[[1]]
strsplit(s,"")[[1]]=='a'
sum(strsplit(s,"")[[1]]=='a')

#2.Create a vector s.
s=c('Guntur','Vijayawada','Hyderabad','Tenali')
s[nchar(s)==max(nchar(s))]

#3.O/P [1] 'Gun' 'Vij' ...
substr(s,1,3)

#4.Output last three
substr(s,nchar(s)-2,nchar(s))

#5.Create a vector v = 1:100. Retrieve all elements that start with 3.
v=c(1:100)
grep("^3",v)
grep("^3",v,value=T)

#6.Retrieve all that elements that either start with 3 or ends with 3.
grep("^3|3$",v,value=T)

#7.Create  a vector s=c('VIT','vit','VIT-123','123','01-01-2024')
s=c('VIT','vit','VIT-123','123','01-01-2024')
s

#8.Retrieve all elements that contain only digits
grep("^[0-9]*$",s)

#9.Retrieve all elements that contain only uppercase letters .
grep("^[A-Z]*$",s)

#10.Retrive all elements that contains punctuation symbol.
s[grep("[[:punct:]]",s)]


s=c('Guntur','Vijayawada','Hyderabad','Tenali')
#11.o/p-'nuG',jiV'..
#'tur' 'ada' 'dab' 'ila'
rev(strsplit(s,""))
#strsplit(substr(1,3),"")
rev(strsplit(s,"")[[1]][1:3])

#       JAN FEB MAR   (ARTICLES PUBLISHED)
#SCOPE  18  12  13
#SENSE  12  11  10
#SMECH  8   7   8
#Create a barplot
JAN=c(18,12,8)
FEB=c(12,11,7)
MAR=c(13,10,8)
df=data.frame(JAN,FEB,MAR)
rownames(df)=c('SCOPE','SENSE','SMECH')
df
barplot(names.arg=df$JAN,df$FEB,df$MAR,ylim=c(0,20),col=rainbow(3),border="green",main="Month vs Articles",xlab="Month",ylab="Articles Published",legend("topleft",c("x","y"),fill=c("red","green")))
#legend("topleft",fill=rainbow(2),lwd=5)

#v1=c(1,2,3)  v2=c(4,5,6)
#1--4^^2--5^^3--6
#paste()
        