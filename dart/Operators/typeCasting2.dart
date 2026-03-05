void main(){
  //EXPLICIT DOWNCASTING
  ////Used when dealing with Object or inheritance
  Object obj="Hello";
  String str=obj as String;
  print(str);
  //Type Checking Before Casting
  //Inside the is block, Dart automatically promotes the type.No need for as.
  if(obj is String){
    print(obj.length);
  }
  //Casting with Nullable Types
  int? a;
  // double b = a!.toDouble();
  // print(b);
  //OR
  double c= a?.toDouble() ?? 0.0;
  print(c);
  //num Type Behavior
  int x=10;
  num y=x;
  print(y);
  double d = 10.5;
  num n = d;
  print(n);
}