import 'dart:io';

class Bigger {
  dynamic i = 0;
  dynamic k = 0;
  dynamic m = 0;
  dynamic j = 4;
  dynamic n = 4;
  double? marks;

  void by_for_loop() {
    List<double> listing = [4, 66, 85, 46, 108, 33, 82, 16];
    for (i = 1; i < 8; i++) {
      if (j > listing[i]) {
        j = j;
      } else {
        j = listing[i];
      }
    }
    print("Largest number is $j");
  }

  void by_do_while() {
    List<double> listing = [4, 666, 85, 46, 108, 33, 82, 16];
    do {
      if (n > listing[k]) {
        n = n;
      } else {
        n = listing[k];
      }
      k++;
    } while (k < 8);

    print("Largest number is $n");
  }

  void input_from_terminal() {
    List<double> findlarge = [4];

    for (n = 2; n <= 8; n++) {
      stdout.write("enter num $n: ");
      double listing = double.parse(stdin.readLineSync()!);
      findlarge.add(listing);
    }

    for (m = 1; m < 7; m++) {
      if (n > findlarge[m]) {
        // ISSUE now n is already set as 9 in the last for loop[ after exicute n++ from 8]  , so need to use distractive fun.
        n = n;
      } else {
        n = findlarge[n];
      }
    }
    print("Largest number is $n");
  }
}

void main() {
  Bigger bigger = Bigger();
  bigger
    ..by_for_loop()
    ..by_do_while()
    ..input_from_terminal();
}
