void main() {
  print(targetIndices([1,2,5,2,3], 2));
}

List<int> targetIndices(List<int> nums, int target) {
  nums.sort();
  List<int> index = [];

  for(int i = 0; i < nums.length; i++) {
    if(nums[i] == target) {
      index.add(i);
    }
  }
  return index;
}