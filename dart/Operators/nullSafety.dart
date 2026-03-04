void main(){
  //null
  int? age;      // Can be null
  age = 25;      
  age = null;    // ✅ Allowed
  int height = 180;
  // height = null; ❌ Error
  //null assertion
  String? name = "John";
  print(name!.length);  // Safe because name is not null
  //String? name = null; print(name!.length);  // ❌ Runtime error

  //?? If null use default value
  String? n = null;
  String displayName = n ?? "Guest";
  print(displayName);  // Guest
  //??= Assign if null
  String? str;
  str ??= "Guest";
  print(str);  // Guest
}