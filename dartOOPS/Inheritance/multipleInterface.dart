abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck is flying");
  }

  @override
  void swim() {
    print("Duck is swimming");
  }
}