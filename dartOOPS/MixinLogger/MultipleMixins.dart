mixin A{
  void methodA()=> print("A");
}
mixin B{
  void methodB()=>print("B");
}
class Test with A,B{}
void main(){
  Test t=Test();
  t.methodA();
  t.methodB();
}