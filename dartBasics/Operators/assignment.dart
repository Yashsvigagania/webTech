void main(){
  int a=10;
  print(a);
  a+=10;
  print(a);
  a-=5;
  print(a);
  a*=2;
  print(a);
  a??=2; //Assign if null and a is not null here
  print(a);
  double b=10;
  b/=5;
  print(b);
  int? c;
  c??=2;
  print(c);
}