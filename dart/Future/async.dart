//Async Main
Future<void> main() async{
  await Future.delayed(Duration(seconds:2));
  print("Done!");
}