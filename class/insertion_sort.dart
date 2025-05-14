import 'dart:io';

class InsertionSorting {
  void array(int n) {
    List<int> data = [];
    for (int i = 1; i <= n; i++) {
      stdout.write("enetr num $i: ");
      int inp = int.parse(stdin.readLineSync()!);
      data.add(inp);
    }
    print(data);
    data.sort();
    print(data);
  }

  void insertionSort(List<int> arr) {
    int n = arr.length;
    for (int i = 1; i < n; i++) {
      int key = arr[i];
      int j = i - 1;

      while (j >= 0 && arr[j] > key) {
        arr[j + 1] = arr[j];
        j = j - 1;
      }
      arr[j + 1] = key;
    }
  }
}

class sortting{
  
}
void main() {
  InsertionSorting sorting = InsertionSorting();
  sorting.array(3);

  List<int> myList = [12, -11, 13, 5, 6];
  print("Original list: $myList");
  sorting.insertionSort(myList);
  print("Sorted list: $myList");
}
