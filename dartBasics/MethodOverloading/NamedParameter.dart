class Calculator {
  int add({required int a, required int b, int c = 0}) {
    return a + b + c;
  }
}

void main() {
  print(Calculator().add(a: 2, b: 3));        // 5
  print(Calculator().add(a: 2, b: 3, c: 4));  // 9
}