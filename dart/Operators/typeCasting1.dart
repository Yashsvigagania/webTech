void main(){
  int a=10;
  double b=a.toDouble(); //int to double
  print(b);
  double x=10;
  int y=x.toInt(); //double to int
  print(y);
  String str="10";
  int n=int.parse(str); //String to number conversion(int)
  print(n); 
  double d=double.parse(str); //String to number conversion(double)
  print(d);
}