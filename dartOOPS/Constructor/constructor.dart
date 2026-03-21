class Student{
  String name;
  int age;
  Student(this.name,this.age);
  void display(){
    print("Name: $name");
    print("Age: $age");
  }
}
  void main(){
    Student s1=Student("Yashsvi",20);
    s1.display();
  }