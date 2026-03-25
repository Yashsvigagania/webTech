class Animal{
  void breathe()=>print("Breathing");
}
mixin Walker on Animal{
  void walk(){
    breathe();
    print("Walking");
  }
}
class Dog extends Animal with Walker{}
