class Animal{
  void sound(){
    print("Animal makes sound");
  }
}
class Dog extends Animal{
  //@override
  void sound(){
    print("Dog barks");
  }
}
void main(){
  Dog d=Dog();
  d.sound();
}