void main() {
  print(searchInsert([1,3,4,5,7,8,9,10], 6));
}

int searchInsert(List<int> nums, int target) {
  int start = 0;
  int end = nums.length - 1;

  while(start <= end) {
    int middle = ((start + end) / 2).floor();
    if(nums[middle] == target) {
      return middle;
    }
    if(nums[middle] > target) {
      end = middle - 1;
    } else {
      start = middle + 1;
    }
  }

  return start;
}