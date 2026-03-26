//Accessing Parent Method Using super – Employee & Manager
class Employee{
  double salary=50000.0;
  void displaySalary(){
    print("Salary: $salary");
  }
}
class Manager extends Employee{
  double bonus=10000.0;
  void displaySalary(){
    super.displaySalary();
    print("Bonus: $bonus");
    print("Total Salary: ${salary + bonus}");
  }
}
void main(){
  Manager m=Manager();
  m.displaySalary();
}