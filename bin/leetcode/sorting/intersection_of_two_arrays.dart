void main() {
  print(intersection([4,9,5], [9,4,9,8,4]));
}

List<int> intersection(List<int> nums1, List<int> nums2) {
  List<int> arr = [];

  for(int i = 0; i < nums1.length; i++) {
    for(int j = 0; j < nums2.length; j++) {
      if(nums1[i] == nums2[j]) {
        arr.add(nums1[i]);
      }
    }
  }
  Set<int> set = Set<int>.from(arr);
  return set.toList();
}