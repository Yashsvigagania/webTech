import 'dart:io';
void main(){
  print("Your age");
  double? age=double.parse(stdin.readLineSync()!);
  print("Your age is $age");
}