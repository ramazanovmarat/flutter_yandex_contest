void main() {
  print(maximumCount([-5,5,20]));
}

int maximumCount(List<int> nums) {
  List<int> negative = [];
  List<int> positive = [];

  for(int i = 0; i < nums.length; i++) {
    if(nums[i].isNegative) {
      negative.add(nums[i]);
    }
    if(nums[i] > 0) {
      positive.add(nums[i]);
    }
  }
  return negative.length > positive.length ? negative.length : positive.length;

}