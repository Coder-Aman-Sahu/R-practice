age=c(25,26,27,26,28,29,28,30,31,30)
hist(age,
     xlim=c(25,31),
     ylim=c(0,3),
     col='red',
     border='green',
     main='Histograms of age',
     xlab='Age',
     ylab='Frequency of occurence')

gear=c(4,4,4,3,3,3)
hist(gear,
     xlim=c(2,4),
     ylim=c(1,4),
     col='red',
     border='blue',
     main='Histograms of Gears',
     xlab='No. of gears',
     ylab='Frequency of occurence')

x=LETTERS[1:7]
y=c(2.87,3.41,3.43,1.67,0.83,2.85,1.34)
df=data.frame(x,y)
barplot(names.arg=df$x,df$y,
        ylim=c(0,5),
        col='red',
        border='green',
        main='Title of barplot',
        xlab='X-axis label',
        ylab='Y-axis label')

model=c('Mazda RX4','Mazda RX4 Wag','Datsun 710','Hornet 4 Drive','Hornet Sportabout','Valiant')
mpg=c(21,21,22.8,21.4,18.7,18.1)
mtc=data.frame(model,mpg)
par(mar=c(15,5,3,1))
barplot(names.arg=mtc$model,mtc$mpg,
        ylim=c(0,25),
        col=rainbow(length(model)),
        las=2,
        main='Model vs. Milage',
        ylab='Milage per Gallon')
legend("topleft",regions,fill=rainbow(length(model)))


regions=c("East","West","North")
colors=rainbow(3)
months=c("Mar","Apr","May","Jun","Jul")
Values=matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow=3,ncol=5,byrow=TRUE)
Values
colnames(Values)=months
rownames(Values)=regions
Values
barplot(names.arg=months,
        Values,
        beside=TRUE,
        main="Total Rainfall",
        xlab="Month",
        ylab="Rainfall",
        col=colors)
legend("topleft",regions,fill=colors)

student=data.frame(id=1:10,name=LETTERS[1:10],score=sample(1:50,10))
write.csv(student,"F:\\Notes & Curriculum\\SEM-4\\CSE1006-Foundations for Data Analytics\\CAT-2\\student.csv",row.names=FALSE)
read.csv("F:\\Notes & Curriculum\\SEM-4\\CSE1006-Foundations for Data Analytics\\CAT-2\\student.csv")
write.table(student,"F:\\Notes & Curriculum\\SEM-4\\CSE1006-Foundations for Data Analytics\\CAT-2\\student.txt")

read.table("F:\\Notes & Curriculum\\SEM-4\\CSE1006-Foundations for Data Analytics\\CAT-2\\student.txt",header=T)[1:5,]

s='I am Ravi\nI belong to SCOPE\nI teach FDA'
writeLines(s,'F:\\Notes & Curriculum\\SEM-4\\CSE1006-Foundations for Data Analytics\\CAT-2\\std123.txt')
cat('i live at Guntur',file='F:\\Notes & Curriculum\\SEM-4\\CSE1006-Foundations for Data Analytics\\CAT-2\\std123.txt',append=T,sep='\n')


score=sample(c(-5:5,NA),25,replace=T)
sum(is.na(score))
which(is.na(score))
score[which(is.na(score))]=median(score)
score[score<0]=0
x=1:10
y=11:20
df=data.frame(x,y)
df[order(df$x,df$y),]
df[order(-df$x,-df$y),]

df1=data.frame(ID=c(1:4),Department=c('SCOPE','SENSE','SMECH','SAS'))
df2=data.frame(ID=seq(1,4,2),City=c('Vizag','Trivendrum'))
merge(df1,df2,by='ID')
merge(df1,df2,by='ID',all.x=T)
merge(df1,df2,by='ID',all.y=T)
merge(df1,df2,by='ID',all=TRUE)
merge(df1,df2,by=NULL)

X=1:3
Y=10:12
rbind(X,Y)

df1
rownames(df1)=letters[1:4]
df1
library(dplyr)
rename(df1,I=ID)
df1
colnames(df1)=c(1,2)
df1
df1 %>% group_by(1)
group_by(df1,1)
