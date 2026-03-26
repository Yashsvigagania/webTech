class Person{
  String? name;
  int? age;
  void displayInfo(){
    print("Name: $name");
    print("Age $age");
  }
}
class Student extends Person{
  int? rollNumber;
  void displayStudentInfo(){
    print("Roll number: $rollNumber");
  }
} 
void main(){
  Student st=Student();
  st.name="yashsvi";
  st.age=20;
  st.rollNumber=28;
  st.displayInfo();
  st.displayStudentInfo();
}