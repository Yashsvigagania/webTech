void sayHello() {
  print("Hello");
}

void execute(Function fn) {
  fn();
}

void main() {
  execute(sayHello);
}