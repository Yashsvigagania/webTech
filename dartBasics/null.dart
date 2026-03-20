void main() {
  String? name;

  print(name?.length);     // Safe
  print(name ?? "Guest");  // Default value
  
  name = "Dart";
  print(name!.length);     // Safe here because it's not null
}
