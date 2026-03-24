abstract class Worker{
  void work();
}
class Person{
  String name;
  Person(this.name);
  void introduce(){
    print("Hi,I am $name");
  }
}
class Teacher extends Person implements Worker{
  Teacher(String name):super(name);
  void work(){
    print("$name is teaching students");
  }
}
void main(){
  Teacher t=Teacher("Abhishek");
  t.introduce();
  t.work();
}