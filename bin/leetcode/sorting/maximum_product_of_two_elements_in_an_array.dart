void main() {
  print(maxProduct([3,4,5,2]));
}

int maxProduct(List<int> nums) {
  nums.sort((a, b) => b.compareTo(a));

  return (nums[0] - 1) * (nums[1] - 1);
}