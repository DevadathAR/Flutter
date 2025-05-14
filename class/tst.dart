void main() {
   List<int> array =[3, 1, 4, 1, 5, 9];
  List<int> a;
  int arrayleng = array.length;
  array.sort();
  print("second largest nuber");
  print(array[array.length-2]);
}

// Question 2:
// Finding the Missing NumberProblem Statement:
// Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, write a function to find the one missing number.Example:If the input array is [3, 0, 1], the missing number should be 2.

// Constraints:
// The input array is not sorted.
// The array length is at least 1 and at most 10^4.

// void main() {
//   List<int> a = [1, 2, 3, 4, 5, 6, 8, 9];

//   print(a);
//   int i = a.length - 1;

//   for (int i = 0; i <= a.length - 2; i++) {
//     if (a[i] + 1 != a[i + 1]) {
//       print("missing number");
//       print(a[i] + 1);
//     }
//   }
// }
