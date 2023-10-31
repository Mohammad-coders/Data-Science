#condition check the greading system
marks<- 49
if(marks<50 && marks>=0){
  print("Fail")
}else if(marks<=100 && marks>=90){
  print("A+")
}else if(marks <90 && marks>=85){
  print("A")
}else if(marks<85 && marks>=80){
  print("B+")
}else if(marks <80 && marks>=75) {
  print("B")
}else if(marks<75 && marks>=70){
  print("C+")
}else if(marks<70 && marks>=65){
  print("C")
}else if(marks<65 && marks>=60){
  print("D+")
}else if(marks<60 && marks>=50){
  print("D")
}else{
  print("Marks is not actual range")
}
