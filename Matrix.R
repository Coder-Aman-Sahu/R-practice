#Vector
#Q1.Consider a vector v=c(2,-5,12,-14,22) Replace all the -ve elements with their absolute equivalents.

v=c(2,-5,12,-14,22)
#v=abs(v)
v[v<0]=-1*(v[v<0])
v
#Q2.Insert a new element 10 between index 2 and 3 of the vector v.
v=c(2,-5,12,-14,22)
v=c(v[1:2],10,v[3:length(v)])
v

#Matrix

#Q1.Write a R command to Create the following matrix mat=[(-5,6,-22,-10),(12,-20,4,10),(13,11,8,15),(-14,8,-9,-6)]
mat=matrix(c(-5,6,-22,-10,12,-20,4,10,13,11,8,11,-14,8,-9,-6),4,4,byrow=TRUE)
mat

#Q1.Count the no. of -ve elements present in the matrix
sum(mat<0)
mat[mat<0
]
length(mat[mat<0])

#Q2.Print all the positive elements present in mat
mat[mat>0]

#Q3.Print all the elements present in the principal diagonal of mat.
row(mat)
col(mat)
mat[row(mat)==col(mat)]

#Q4.Print the largest element present in mat
max(mat)
mat[mat==max(mat)]

#Q5.Print the second largest element present in mat.
mat1=sort(mat)
mat1[length(mat)-1]

#Q6.Print the index where the largest element is present.
which(mat==max(mat),arr.ind=TRUE)

#Q7.Print all the elements present in the lower triangle.
mat[row(mat)>=col(mat)]
t(mat)[row(t(mat))<=col(t(mat))]

#Q8.Retrive the columnwise largest element present in mat 
apply(mat,2,max) #1=row,#2=column
apply(mat,2,min)
apply(mat,1,max)
apply(mat,1,min)
apply(mat,1,sum)
rowSums(mat)
apply(mat,2,sum)
colSums(mat)
#Q9.Print the index where the second largest element is present.
which(mat==sort(mat)[length(mat)-1],arr.ind=TRUE)

#Q10.Print all the even numbered rows present in mat.
mat[seq(2,nrow(mat),2),]

mat[nrow(mat):1,]

#Q11.Retrive the columnwise second largest element present in mat
apply(mat,2,function(x)sort(x)[length(x)-1])




