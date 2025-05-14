import 'dart:io';

class Math {
  int i = 0;
  int j = 0;
  void numb() {
    for (i = 1; i <= 5; i++) {
      for (j = 1; j <= i - 1; j++) {
        stdout.write("$i ");
      }
      print(i);
    }
  }

  void pyramid_numb() {
    int i = 0;
    int j = 0;
    int k = 0;
    for (i = 1; i <= 5; i++) {
      for (k = 1; k <= (5 - i); k++) {
        stdout.write(" ");
      }
      for (j = 1; j <= i - 1; j++) {
        stdout.write("$i ");
      }
      print(i);
    }
  }
}

void main() {
  // Math math = Math();
  // math..numb()..pyramid_numb();

  String a = "* ";

  for (int i = 0; i <= 6; i++) {
    for (int v=6;v>i;--v){
      stdout.write(" ");
    }
    for (int x = 0; x <= i; x++) {
      stdout.write(a);
    }
    print("");
  }
}
