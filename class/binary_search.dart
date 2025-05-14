int binarySearch(List<int> sortedList, int target) {
  int low = 0;
  int high = sortedList.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;
    int midValue = sortedList[mid];

    if (midValue == target) {
      return mid;
    } else if (midValue < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1; // Not found
}

void main() {
  List<int> myList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  int target = 11;

  int index = binarySearch(myList, target);
  if (index != -1) {
    print("Element $target found at index $index");
  } else {
    print("Element $target not found in the list");
  }
}
