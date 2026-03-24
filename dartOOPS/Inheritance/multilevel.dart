class Animal{
  void eat(){
    print("Eating");
  }
}
class Dog extends Animal{
  void bark(){
    print("Barking");
  }
}
class Puppy extends Dog{
  void weep(){
    print("Weeping");
  }
}
void main(){
  Puppy p=Puppy();
  p.eat();
  p.bark();
  p.weep();
}