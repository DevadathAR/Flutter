import 'dart:io';

class Pyramid {
  dynamic i = 0;
  dynamic j = 0;
  int k = 0;

  void star() {
    for (i = 1; i <= 20; i++) {
      for (k = 1; k <= (20 - i); k++) {
        stdout.write(" ");
      }

      for (j = 1; j <= i; j++) {
        stdout.write("* ");
      }
      stdout.write("\n");
    }
  }
}

void main() {
  Pyramid pyramid = Pyramid();
  pyramid..star();
}
