library(dplyr) 
score=c(-5,2,7,-2,5) 
df=data.frame(score) 
df=mutate(df,remark = if_else(df$score>=0,'positive','negative')) 
df

temp=c(-2,25,37,-4,0,17)
df1=data.frame(temp)
df1=mutate(df1,remark=if_else(df1$temp>0,'positive',if_else(df1$temp<0,'negative','zero')))
df1

#Student
id=1:10
name=LETTERS[1:10]
age=c(18,19,20,21,22,22,19,19,29,18)
cgpa=c(8.7,9.2,9.4,9.2,8.7,8.5,8.2,8.9,8.9,9.0)
did=c('CS','CS','EC','ME','EC','ME','EC','CS','CS','CS')
student=data.frame(id,name,age,cgpa,did)
student

did=c('CS','EC','ME','CV')
dname=c('Computer Science','Electronics','Mechanical','Civil')
dept=data.frame(did,dname)
dept

#1.Select the initial three variables of Student data frame
select(student,1:3)

#2.Drop the last two variables of student data frame
select(student,-c(4,5))
#select(student,-c(student$cgpa,student$did))

#3.Select those records where age>19
filter(student,age>19)

#4.Select those records where the cgpa is greater that 8.7 and did value is 'CS'
filter(student,cgpa>8.9 & did=='CS')

#5.Rename 'cgpa' to 'gpa'
student=rename(student,gpa=cgpa)

#6.Retrieve those ids where age is greater than 19.
filter(student,age>19)
select(filter(student,age>19),id)

#7.Print the students' names with thier dept name.
merge(student,dept,by='did')
merge(student,dept,by='did')[c('name','dname')]
select(merge(student,dept,by='did'))

#8.Print the dept name to which no student has enrolled  
a=merge(x=student,y=dept,by='did',all.y=T)
a
a[!complete.cases(a),'dname']

#9.Summarise the student data frame with the mean and median of age attributes.
summarise(student,mean(age),median(age))

#10.Summarise the student data frame with the mean and median of both age and gpa attributes.
student %>% summarise_at(vars(age,gpa),list(mean,median))
summarise_at(student,vars(age,gpa),list(Mean=mean,Median=median))

#11.Summarise the student data frame with the highest cgpa for each did.
student %>% group_by(did) %>% summarise(max=max(cgpa))         
         
#!2.Summarise the student data frame mean and media of age attr where the values are greater are greater than 19.
#Pipeline
student  %>% filter(age>19) %>% summarise(mean=mean(age),median=median(age))
