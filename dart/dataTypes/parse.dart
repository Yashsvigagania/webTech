import 'dart:io';
void main(){
  print("Enter your age");
  int age=int.parse(stdin.readLineSync()!);
  print("Enter your salary");
  double salary=double.parse(stdin.readLineSync()!);
  print("Your age is $age");
  print("Your salary is $salary");
}
