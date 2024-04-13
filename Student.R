#1.Create a Student data frame to store the following data set.
#dataset
#id  name   age   cgpa  dept height weight  fathername
#1    A     18	8.2	CS	5.5	58		NA
#2	B	19	NA	EC	NA	68		NA
#3	C	NA	NA	ME	NA	72		NA
#4	D	NA	9.2	CS	5.8	72		NA
#5	E	20	9.3	CS	5.75	72		NA
#6	F	21	NA	CS	5.4	80		NA
#7	G	22	9.4	EC	NA	NA		NA
#8	H	19	8.6	ME	5.5	NA		NA
id=c(1:8)
name=LETTERS[1:8]
age=c(18,19,NA,NA,20,21,22,19)
cgpa=c(8.2,NA,NA,9.2,9.3,NA,9.4,8.6)
dept=c('CS','EC','ME','CS','CS','CS','EC','ME')
height=c(5.5,NA,NA,5.8,5.75,5.4,NA,5.5)
weight=c(58,68,72,72,80,66,NA,NA)
fathername=rep(NA,8)
Student=data.frame(id,name,age,cgpa,dept,height,weight,fathername)
Student

#1Q.Delete those columns that entirely consists of NA.
is.na(Student)
Student=Student[,-which(colSums(is.na(Student))==nrow(Student))]
Student
Student=Student[,!(colSums(is.na(Student))==nrow(Student))]
Student

#2Q.Count the number of rows that contain exactly one missing value.
sum((rowSums(is.na(Student)==1))==1)

#3Q.Count the number of rows that contains at most one missing value.
sum((rowSums(is.na(Student)))<=1)

#4Q.Find the number of rows that contains at least one missing value.#>=1
sum((rowSums(is.na(Student)))>=1)

#5Q.Print those rows that doesn't contain any missing values.
Student[((rowSums(is.na(Student)))==0),]

#6Q.Delete those rows that contain more than two missing values.
Student[-which(rowSums(is.na(Student))>2),]
Student[(rowSums(is.na(Student))>2),]
Student=Student[!(rowSums(is.na(Student))>2),]
Student

#7Q.Replace the missing value in age column with mean of the remaning values.
mean(Student$age)
Student$age[is.na(Student$age)]=median(Student$age,na.rm=T)
Student

#8Q.Replace the missing values in CGPA column with the mean of the remaining values.
Student$cgpa[is.na(Student$cgpa)]=mean(Student$cgpa,na.rm=T)
Student

#9Q.Replace the missing values in height column with the maximum of the remaining values.
Student$height[is.na(Student$height)]=max(Student$height,na.rm=T)
Student

#10Q.Replace the missing values in weight column with second maximum of the remaining values.
s=sort(unique(Student$weight,rm=T))
unique(Student$weight,na.rm=T)
s
s[length(s)-1]
Student$weight[is.na(Student$weight)]=s[length(s)-1]
Student

#11Q.Print the name of the 'CS' student who has recieved the CGPA among all the CS student.

max(Student[Student$dept=='CS',]$cgpa)

#Student$name[Student[Student$dept=='CS',]$cgpa==max(Student[Student$dept=='CS',]$cgpa)]

