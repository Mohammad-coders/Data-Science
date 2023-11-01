#lecture 3
#R has six types of data structures: Vector,Matrix,Array,Data Frame,Factors,List

#Vectors 
#assign multiple instances or variable using vector 
a <- c(1,2,3,4)
a
b<- c("one","two","three")
b
c<- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE)
name<-c("hello","world")
name
length(name)

X<-c(2,4,5,6)
X<-X+2
X
#sort vector
x<-c(4,3,2,5,4,6,2,26,10,23)
sort(x)
s<-c("x","a","s","b","e","d","f","g","c","v","z","x")
sort(s)

#access vector index
A<- c(40,30,2,20,30,5,4,20,1,10,4)
A[2]
A[2,3]
A[1]

#Matrix

mymatrix<-matrix(1:20,nrow = 5,ncol = 4,byrow = TRUE)
mymatrix

rname<-c("R1","R2","R3","R4","R5")
cname<-c("C1","C2","C3","C4")
mymatrix<- matrix(1:20,nrow = 5,ncol = 4,dimnames = list(rname,cname))
mymatrix[,2]
mymatrix[1,]
mymatrix[2,3]
mymatrix[1,]

#Array
myarray<-array(1:24,c(2,3,4))
myarray



#Data frames 
#assign/declare all the attribute instances.
patientID<-c(1,2,3,4,5)
age<- c(18,25,34,45,52)
gender<-c('Male','Male','Female','Male','Female')
diabetes<-c('Type1','Type2','Type2','Type1','Type1')
status<-c('Poor','Improved','Excellent','Poor','Excellent')

#create data frame use data.frame() function and write the all attribute on the parameter.
patientdata<-data.frame(patientID,age,gender,diabetes,status)
patientdata

#specifying element of a data frame
patientdata[1:2]
patientdata[c("age","status")]
patientdata[c("age")]

#Factors: used to categorized data and stored in levels.
students_cgpa<- factor(c("A","A+","B","C","B","C","A+"))
students_cgpa

#List: used to gather a variety of objects under one name.
g<-"My first list"
h<-c(25,34,18,40)
j<- matrix(1:5,nrow = 2)
k<-c('one','two','three')
mylist<- list(title=g,ages=h,j,k)
mylist
#access the list
mylist[2]
mylist[4]
