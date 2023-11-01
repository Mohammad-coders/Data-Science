
#read the import the excel file install package readxl.
install.packages("readxl")
library(readxl)

#Data set call from the csv file to read all the data.
mydata<- read_excel("E:/AIUB/9th semester/Data Science/Data Set/data_set.xlsx",sheet = 1)
mydata

#see the column name
names(mydata)

#add attributes/column in data set
mydata$Gender<-c('Male','Female','Male','Male','Female','Female','Male','Male','Female')
mydata

#value labels: factor() function used to create value labels for categorical variables
mydata$gender<- factor(mydata$gender,levels =c('Male','Female'), labels = c(1,2))
mydata

#delete attribute/column from data set
mydata <- subset(mydata, select = -Gender)
mydata

#structure of data set show the condition of all the data set numeric,categorical,event using
str(mydata)

#summary() t generates a summary statistics report for each variable in the data frame minimum, first quartile (Q1), median (Q2), mean, third quartile (Q3), and maximum values for numeric variables
summary(mydata)

# standard deviation
s<-mydata$Loan
sd(s)

#multiple columns standard deviation
library(dplyr)
mydata %>% summarise_if(is.numeric,sd)


#row wise standard deviation
library(matrixStats)
library(dplyr)
mydata$score=rowSds(as.matrix(mydata[,c(2,3)]))
mydata$score
mydata

#select random number of row use dplyr
library(dplyr)
sample_n(mydata,4)

#select specific variables
mydata2<-select(mydata,Loan)
mydata2


#counting number of null value in each column
mydata<- read_excel("E:/AIUB/9th semester/Data Science/Data Set/data_set.xlsx",sheet = 1)
mydata
colSums(is.na(mydata))

#find the specific row number of null values
which(is.na(mydata$Loan))
which(is.na(mydata$interest_rate))
which(is.na(mydata$gender))
which(is.na(mydata$Borrower))

#remove null value from data set
remove<-na.omit(mydata)
remove #print the data set after removing null values

colSums(is.na(remove)) #check is there has any null value

