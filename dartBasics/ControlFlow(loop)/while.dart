void main() {
  int i = 1;
  String result = "";

  while (i <= 5) {
    result += "$i ";
    i++;
  }

  print(result);
}
// void main() {
//   int i = 1;
//   String result = "";
//   while (i <= 5) {
//     result+="$i";
//     print(result);
//     i++;
//   }
// }
//output:
/*
1
12
123
1234
12345*/