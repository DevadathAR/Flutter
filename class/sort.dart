import 'dart:io';

void main() {
  // List<int> ar = [];
  // List<int> array = [
  //   5,
  //   3,
  //   6,
  //   2,
  //   3,
  //   98,
  //   74,
  //   3,
  //   1,
  //   3,
  //   8,
  //   9,
  //   3,
  //   2,
  //   8,
  //   6,
  //   3,
  //   2,
  //   8,
  //   6,
  //   3,
  //   5,
  //   8,
  //   6,
  //   3,
  //   2,
  //   8,
  //   6,
  //   3,
  //   8,
  //   9,
  //   26,
  //   3,
  //   0,
  //   1,
  //   7,
  //   98,
  //   5,
  //   63,
  //   2,
  //   4,
  //   86,
  //   2,
  //   1,
  // ];
  // array.sort();

  // for (int i = 0; i <= array.length - 2; i++) {
  //   if (array[i] == array[i + 1]) {
  //     continue;
  //   } else {
  //     ar.add(array[i]);
  //   }
  // }
  // print(ar);

  // String a = "* ";
  // for (int row = 0; row <= 10; row++) {
  //   for (int colu = 0; colu <= 10; colu++) {
  //     if (row == 5 ||
  //         row == 0 ||
  //         row == 10 ||
  //         colu == 0 ||
  //         colu == 10 ||
  //         colu == 5 ||
  //         row == colu ||
  //         row + colu == 10 ||
  //         row + colu == 5 ||
  //         row - 5 == colu ||
  //         row + 5 == colu ||
  //         15 - row == colu) {
  //       stdout.write(a);
  //     } else {
  //       stdout.write("  ");
  //     }
  //   }
  //   print("");
  // }

  // String b = ". ";
  // for (int i = 0; i <= 9; i++) {
  //   for (int k = 0; k <= i; k++) {
  //     stdout.write(" ");
  //   }
  //   for (int j = 0; j <= 9 - i; j++) {
  //     stdout.write(b);
  //   }
  //   print("");
  // }

  // for (int i = 0; i <= 9; i++) {
  //   for (int k = 0; k <= 9-i-1; k++) {
  //     stdout.write(" ");
  //   }
  //   for (int j =0; j <=i+1; j++) {
  //     stdout.write(b);
  //   }
  //   print("");
  // }

  String c ="~ ";
  for(int i =0;i<=16;i++){

    for(int k =0;k<=16;k++){
      
      stdout.write(" ");
    
  }

    for(int j =0;j<=16;j++){
      stdout.write(c);
    
  }
  print("");

  }
}
