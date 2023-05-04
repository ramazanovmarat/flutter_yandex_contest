import 'dart:math';

void main() {
  print(relativeSortArray([2,3,1,3,2,4,6,7,9,2,19], [2,1,4,3,9,6]));
}

List<int> relativeSortArray(List<int> arr1, List<int> arr2) {

  List<int> result = [];

  for(int i = 0; i < arr2.length; i++) {
    List<int> temp = arr1.where((element) => element == arr2[i]).toList();
    temp.sort();
    result.addAll(temp);
  }

  List<int> temp = arr1.where((element) => !arr2.contains(element)).toList();
  temp.sort();
  result.addAll(temp);

  return result;
}