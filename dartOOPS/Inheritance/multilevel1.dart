class Shape{
  void display(){}
}
class Rectangle extends Shape{
  double length=10.0;
  double width=10.0;
  double area(){
    return length*width;
  }
}
class Box extends Rectangle{
  double height=10;
  double volume(){
    return length*width*height;
  }
}
void main(){
  Box b=Box();
  print("Area: ${b.area()}");
  print("Volume: ${b.volume()}");
}