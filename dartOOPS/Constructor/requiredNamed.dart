class Student{
  String name;
  int age;
  Student({required this.name,this.age=0});
}
void main(){
  var s1=Student(name:"Yashsvi",age:20);
  var s2=Student(name:"Yashsvi");
  print("${s1.name}, ${s1.age}");
  print("${s2.name}, ${s2.age}");
}