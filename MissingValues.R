
#Missing Value-
#Simple Random with replacement
v1=sample(c(-10:10,NA),10)
v1
v=sample(c(-5:5,NA),10,replace=T)
v
#Simple Random without replacement
v3=sample(c(-5:5,NA),10)
v3
c(-5:5,NA)           

#(i).Write a R commonad to count the number of missing values in v.
v2==is.na(v2)    
sum(is.na(v))

#(ii).Find the indexes where the missing values are present.
which(is.na(v))

#(iii).Fill the missing values with the mean of the remaning values.
m=mean(v,na.rm=T)
m
v[which(is.na(v))]=m
v


#MATRIX
A=c(NA,8,9,10)
B=c(8,9,7,10)
C=c(NA,NA,9,10)
D=c(8,9,NA,10)
score=matrix(c(NA,8,9,10,8,9,7,10,NA,NA,9,10,8,9,NA,10),4,4,byrow=T)
rownames(score)=c("A","B","C","D")
colnames(score)=c("C1","C2","C3","C4")
score
#(i).Count the no. of missing values in score
sum(is.na(score))
#(ii).Count the no. of missing values in each row of score.
rowSums(is.na(score))

#(iii).Count the no. of missing values in each row of score.
colSums(is.na(score))

#(iv).Fill all the missing values with 0.
#score[which(is.na(score))]=0
score

#(v)ASSIGNMENT.Print the name of the student whose scores are not missing.
#a=!is.na(score)
#a
#rownames(score[a[1:4,]==TRUE)])
#rownames(score[which(rowSums(is.na(score))==0)])

#(vi)Find the club name in which B has recieved the highest score.
score
colnames(score["B",]==max(score["B",]))

score=matrix(c(NA,8,9,10,8,9,7,10,NA,NA,9,10,8,9,NA,10),4,4,byrow=T)
rownames(score)=c("A","B","C","D")
colnames(score)=c("C1","C2","C3","C4")

score
rownames
rowSums(is.na(score))
rowSums(is.na(score))==0
rownames(score)[rowSums(is.na(score))==0]


#(vii).Find the student name who has recieved the highest score in club C3.
rownames(score[,"C3"]==max(score[,"C3"]))

#(viii).Count the number of rows with exactly one missing value then at least one missing values, at most one missing values.
