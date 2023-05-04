void main() {
  print(findErrorNums([1,2,2,4]));
}

List<int> findErrorNums(List<int> nums) {
  int n = nums.length;
  int sum = (n * (n + 1) ~/ 2);
  int duplicate = -1, missing = -1;

  Set<int> set = {};
  for (int i = 0; i < n; i++) {
    if (!set.add(nums[i])) {
      duplicate = nums[i];
    }
    sum -= nums[i];
    print('SUM: $sum');
  }

  missing = sum + duplicate;

  return [duplicate, missing];
}