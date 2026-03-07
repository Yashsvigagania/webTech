import 'dart:io';
void main(){
  print("Enter a number");
  String input=stdin.readLineSync()!;
  int n=int.parse(input);
  int reversed=0;
  while(n!=0){
    int digit=n%10;
    reversed=reversed*10+digit;
    n~/=10;
    /*print("Reversed number: $reversed");
    Reversed number: 4
    Reversed number: 43
    Reversed number: 432
    Reversed number: 4321*/
  }
  print("Reversed number: $reversed");
}