void main() {
  print(canBeEqual([1,2,3,4], [2,4,1,3]));
}

bool canBeEqual(List<int> target, List<int> arr) {
  target.sort();
  arr.sort();

  for(int i = 0; i < target.length; i++) {
    if(target[i] != arr[i]) {
      return false;
    }
  }
  return true;
}