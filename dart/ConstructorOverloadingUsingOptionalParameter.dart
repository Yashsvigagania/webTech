class Student {
  String name;
  int age;

  Student(this.name, [this.age = 20]);
}

void main() {
  var s1 = Student("Yashsvi", 20);
  var s2 = Student("Yashsvi");  // age defaults to 20
  print(s1.name);
  print(s1.age); // 20
  print(s2.age); // 20
}