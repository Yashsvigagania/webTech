class Student{
  String name;
  int age;
  Student(this.name,this.age);
  Student.onlyName(this.name):age=0;
  Student.guest():
  name="Guest",
  age=0;
}
void main(){
  var s1=Student("Yashsvi",20);
  var s2=Student.onlyName("Yashsvi");
  var s3=Student.guest();
  print("${s1.name}, ${s1.age}");
  print("${s2.name}, ${s2.age}");
  print("${s3.name}, ${s3.age}");
}