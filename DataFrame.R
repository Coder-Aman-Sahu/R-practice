#Create the following matrix = {(-1,12,13,-2),(2,5,-3,-2),(0,-12,-13,-18),(1,4,12,18)}Print the sum of all elements except the elements of the first row.
mat=matrix(c(-1,12,13,-5,2,5,-3,-2,0,-12,-13,-18,1,4,12,18),4,4)
mat
sum(mat[2:nrow(mat),])
mat[-1]
mat[-1,]
mat[,-1]
sum(mat[-1,])
#Print the number of negative elements present in each column.
negmat=apply(mat,2,function(x)sum(x<0)) 
#Eliminate the column(s) that contains more than two -mat[ve elements
mat[,!apply(mat,2,function(x)sum(x<0))>2]

#DATA FRAME( In matrix all the columns must posses the same data type but not in Data Frame)
#Student
#Roll Name CGPA Gender
#1	a	8.7	M
#2	b	9.2	F
#3	c	9.5	M
#4	d	9.1	F
#5	e	8.4	M
#Roll<- 1:5 , Name<- letters[1:5] , CGPA<-C(8.7,9.2,9.5,8.1,8.4)

Roll=1:5
Name=letters[1:5]
CGPA=c(8.7,9.2,9.5,8.1,8.4)
Gender=c('M','F','M','F','M')
Student=data.frame(Roll,Name,CGPA,Gender)
Student
#i.Print the first two rows
Student[1:2,]
#ii.Find the mean of the CGPA Column/attribute/feature
mean(CGPA)
mean(Student$CGPA)
#iii.Print the details of the student who has secured the highest CGPA
V=((Student$CGPA)==max(Student$CGPA))
Student[V,]
Student[((Student$CGPA)==max(Student$CGPA)),]
#iv.Print the roll and name of the student who has secured the highest CGPA
Student[((Student$CGPA)==max(Student$CGPA)),1:2]
Student[((Student$CGPA)==max(Student$CGPA)),c(1,4)]
Student[(Student$CGPA)==max(Student$CGPA),c('Roll','Name')]

#v.Print the names of those students whose CGPA is greater than mean of all the CGPA values.
Student
Student[(Student$CGPA)>mean(Student$CGPA),c('Name')]

#Print the details of the Student who has secured the Second highest CGPA.
sort(Student$CGPA)[nrow(Student)-1]
Student$CGPA==sort(Student$CGPA)[nrow(Student)-1]
Student[Student$CGPA==sort(Student$CGPA)[nrow(Student)-1],]
#vii.Print the details of those students whose CGPA is greater than 9.0 abd gender is male.
Student[Student$CGPA>9.0 & Student$Gender=='M',]