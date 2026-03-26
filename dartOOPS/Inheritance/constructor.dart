class Vehicle{
  String? brand;
  Vehicle(String brand){
    this.brand=brand;
  }
  void showBrand(){
    print("Brand: $brand");
  }
}
class Car extends Vehicle{
  String? model;
  Car(
    String brand,
    this.model
  ) : super(brand);
  void showDetails(){
    print("Brand :$brand");
    print("Model: $model");
  }
}
void main(){
  Car c=Car ("Toyota","Tigor");
  c.showDetails();
}