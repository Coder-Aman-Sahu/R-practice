#17/02/24
#Array3-D
#1.Write a R command to create the following 3-D Array a.
#,,1
#	[,1] [,2] [,3]
#[1,]   1    4    7
#[2,]   2    5    8
#[3,]   3    6    9
#,,2
#	[,1] [,2] [,3]
#[1,]   10   13   16
#[2,]   11   14   17
#[3,]   12   15   18

a=array(1:18,dim=c(3,3,2))
a
#SLice-1
a[1,2,1]
#SLice-2
a[1,,1]
#SLice-3
a[,1,2]
#SLice-4
a[nrow(a):1,,1]
#SLice-5
a[,ncol(a):1,2]
#SLice-6
a[c(1,nrow(a)),c(1,ncol(a)),1]
a[seq(1,nrow(a),2),seq(1,ncol(a),2),1]
#SLice-7
(a[seq(1,nrow(a),2),seq(ncol(a),1,-2),2])
#SLice-8
a[,,1]
row(a[,,1])
col(a[,,1])
a[,,1][col(a[,,1])==row(a[,,1])]
#SLice-9
rev(a[,,2][row(a[,,1])==col(a[,,1])])
a[,,2][row(a[nrow(a):1,,1])==col(a[nrow(a):1,,1])]

a[nrow(a):1,ncol(a):1,2]
m=a[nrow(a):1,ncol(a):1,2]
m[row(m)==col(m)]

#SLice-10
#rbind
x[row(x)==col(x)]

#SLice-11
matrix(a[1:nrow(a),1,1])

#SLice-12
a[seq(1,nrow(a),2),,]

#SLice-13
array(a[1,1,1],dim=c(1,1,1))
