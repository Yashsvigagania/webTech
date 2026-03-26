class Animal{
  void makeSound(){
    print("Animal makes sound");
  }
}
class Dog extends Animal{
  void makeSound(){
    print("Dog barks");
  }
}
void main(){
  Animal d=Dog(); //runtime polymorphism
  //Dog d=Dog();
  d.makeSound();
}