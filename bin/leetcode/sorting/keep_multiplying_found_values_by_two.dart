void main() {
  print(findFinalValue([8,19,4,2,15,3], 2));
}

int findFinalValue(List<int> nums, int original) {
  nums.sort();
  for(int element in nums) {
    if(original == element) {
      original *= 2;
    }
  }
  return original;
}