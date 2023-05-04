void main() {
  print(peakIndexInMountainArray([1, 3, 2, 6, 7]));
}

int peakIndexInMountainArray(List<int> arr) {
  int left = 0;
  int right = arr.length - 1;

  while(left < right) {
    int mid = ((left + right) / 2).floor();
    if(arr[mid] > arr[mid + 1]) {
      right = mid;
    } else {
      left = mid + 1;
    }
  }
  return left;
}