void main() {
  print(arrayPairSum([6,2,6,5,1,2]));
}

int arrayPairSum(List<int> nums) {
  nums.sort();
  int total_sum = 0;
  for(int i = 0; i<nums.length; i += 2) {
    total_sum += nums[i];
  }
  return total_sum;
  // return nums.reduce((sum, element) => sum + (nums.indexOf(element) % 2 == 0 ? element : 0));
}