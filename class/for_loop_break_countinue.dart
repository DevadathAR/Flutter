void main() {
  int i = 0;
  for (i = 1; i <= 50; i = i + 2) {
    if (i == 35 || i == 47) {
      continue;
    }
    print(i);
  };

  // for (i = 1; i <= 50; i = i + 2) {
  //   if (i == 35 && i != 47) {
  //     continue;
  //   }
  //   print(i);
  // }

  // for (i = 1; i <= 50; i = i + 2) {
  //   if (i != 35 && i == 47) {
  //     continue;
  //   }
  //   print(i);
  // }
}
