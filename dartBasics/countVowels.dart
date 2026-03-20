import 'dart:io';
void main(){
  print("Enter a string");
  String input=stdin.readLineSync()!;
  input=input.toLowerCase();
  int vowelCount=0;
  for(int i=0;i<input.length;i++){
    if(input[i]=='a' || input[i]=='e'||
    input[i]=='i' || input[i]=='o' || input[i]=='u'){
      vowelCount++;
    }
  }
  print("Number of vowels: $vowelCount");
}