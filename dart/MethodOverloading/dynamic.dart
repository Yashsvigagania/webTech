class Calculator {
  dynamic add(dynamic a, dynamic b) {
    return a + b;
  }
}

void main() {
  print(Calculator().add(2, 3));   // 5
}