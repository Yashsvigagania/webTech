import 'dart:io';
void main(){
  String input=stdin.readLineSync()!;
  int n=int.parse(input);
  if(n%2==0){
    print("Even");
  }
  else{
    print("Odd");
  }
  if(n%3==0 && n%5==0){
    print("It is divisible by 3 and 5");
  }
  else{
    print("It is not divisible by 3 and 5");
  }
}