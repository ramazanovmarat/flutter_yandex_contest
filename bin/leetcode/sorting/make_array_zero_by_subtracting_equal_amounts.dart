void main() {
  print(minimumOperations([1,2,3,4]));
}

int minimumOperations(List<int> nums) {
  Map<int, dynamic> diffValueMap = {};
  for(int i = 0; i < nums.length; i++) {
    if(nums[i] != 0) {
      diffValueMap[nums[i]] = 0;
    }
  }
  return diffValueMap.keys.length;
}
