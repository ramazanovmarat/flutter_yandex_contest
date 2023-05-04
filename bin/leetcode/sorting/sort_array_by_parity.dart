void main() {
  print(sortArrayByParity([3,1,2,4]));
}

List<int> sortArrayByParity(List<int> nums) {
  nums.sort((a, b) => a.isEven ? -1 : 1);
  return nums;
}