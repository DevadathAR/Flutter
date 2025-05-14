import 'dart:io';

class For_In {
  void my_learnings() {
    List<int> age = [5, 36, 78, 91, 6, 51, 23, 64];

    for (int numbers in age) {
      print(numbers);
    }
    print("");

    Set<int> ages = {5, 36, 78, 91, 6, 51, 23, 64};

    for (int numbers in ages) {
      print(numbers);
    }
    print("");
  }

  void sum() {
    int c = 0;
    List<int> array = [5, 2, 61, 42, 30, 21, 8];

    for (int digits in array) {
      c += digits;
    }
    print(c);
  }

  void sum_of_list_from_terminal() {
    List<dynamic> array = [];
    int sum = 0;
    int i = 0;

    for (i = 1; i <= 9; i++) {
      print("enter number $i : ");
      int inputnum = int.parse(stdin.readLineSync()!);
      array.add(inputnum);
    }
    print(array);
    for (int inputnum in array) {
      sum += inputnum;
    }
    print("sum of input is $sum");
  }
}

void main() {
  For_In for_in = For_In();
  for_in
    ..my_learnings();
    // ..sum()
    // ..sum_of_list_from_terminal();
}
