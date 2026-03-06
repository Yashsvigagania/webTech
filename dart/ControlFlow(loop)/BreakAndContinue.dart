void main(){
  print("Break:");
  for (int i = 1; i <= 5; i++) {
  if (i == 3) break;
  print(i);
  }
  print("Continue:");
  for (int j = 1; j <= 5; j++) {
    if (j == 3) continue;
    print(j);
    }
}