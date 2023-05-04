void main() {
  print(getCommon([1,2,3,6], [2,3,4,5]));
}

int getCommon(List<int> nums1, List<int> nums2) {
  Set<int> setNums1 = Set<int>.from(nums1);
  Set<int> setNums2 = Set<int>.from(nums2);

  Set<int> intersection = setNums1.intersection(setNums2);
  if(intersection.isEmpty) {
    return -1;
  } else {
    return intersection.first;
  }
}