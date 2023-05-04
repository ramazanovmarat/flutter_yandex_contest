void main() {
  print(checkIfExist([1, 2, 4, 7, 11]));
}

bool checkIfExist(List<int> arr) {
  for(int i = 0; i < arr.length; i++) {
    for(int j = 0; j < arr.length; j++) {
      if(arr[i] == 2 * arr[j]) {
        return true;
      }
    }
  }
  return false;
}