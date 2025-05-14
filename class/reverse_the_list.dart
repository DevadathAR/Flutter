// import 'dart:indexed_db';
import 'dart:io';

class Reverse {
  void calc(List<int> array) {
    int i = 6;
    // List<int> array = [1, 4, 7, 3, 8, 3, 9];
    dynamic reversed_array = [];
    while (i >= 0) {
      reversed_array.add(array[i]);
      i--;
    }
    print(reversed_array);
  }

  void calc2() {
    int i = 0;
    List<int> array = [1, 4, 7, 3, 8, 3, 9];
    dynamic reversed_array = [];
    int s = array.length;
    for (i = s - 1; i >= 0; i--) {
      reversed_array.add(array[i]);
    }
    print(reversed_array);
  }

  void cal3({required List<int> array, required int n}) {         // it is caller position parameter, here a list must be in the firt parameter and int n must be the second parameter
    int i = 0;
    // int n;
    // List<int> array = [];

    // print("no.of digit : ");
    // n = int.parse(stdin.readLineSync()!);

    for (i = 0; i < n; i++) {
      print("input num ${i + 1} : ");
      var inputnum = int.parse(stdin.readLineSync()!);
      array.add(inputnum);
    }
    print("Input array is $array");

    dynamic reversed_array = [];
    int s = array.length;
    for (i = s - 1; i >= 0; i--) {
      reversed_array.add(array[i]);
    }
    print("Reversed array is : $reversed_array");
  }

  void rev({ required int a}) {               // required for eliminate null case, we can see the effect of required in main function as parameter name in () of function   it is called named parameter
    // int a = 123450;
    num rev = 0;
    do {
      int reminder = a % 10;
      rev = rev * 10 + reminder;
      a = a ~/ 10;
    } while (a != 0);
    print(rev);
  }
}

void main() {
  Reverse reverse = Reverse();
  reverse
    ..calc([1, 4, 7, 3, 8, 3, 9])
    ..calc2()
    ..cal3(array: [1,5], n: 5)
    ..rev(a :32902);
}
