#intro to R simple calculation
1+1
2+3*4
3^2
sqrt(10)
sqrt(4)
pi
#Basic Data Types 
x<-3.1416
x
y<-10
y
d<- 100L
d
bool<- TRUE
while(bool){
  print("This is true")
  break
}
s<-"Hello world!"
s
c=9+3i
c
z=x*y
k=z*d
print(k)

#build in function abs(x) return the absolute(positive) value 
f=-k
print(f)
abs(f)
#return to the round value
ceiling(f)
#return to downward its nearest value
floor(f)
#character
tolower(s)
toupper(s)
strsplit(s,split = "")
sum(x,y)
#find the length of string 
nchar(s)
# to merge or concatenate two string 
t<- "tO all"
paste(s,t)
# multiline string 
str<- "Hello I am Mohammad. I am a student.I am from Chittagong.
Currently i am living Uttara Dhaka"
str
cat(str)
str<-"We are the so called \"Vikings\",from the north."
str
cat(str)
