void greet(String name, [String ?title]) {
  print("Hello $title $name");
}

void main() {
  greet("Yashsvi");
  greet("Yashsvi", "Eng");
}