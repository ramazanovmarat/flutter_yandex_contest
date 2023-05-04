void main() {
  print(search([1, 3, 5, 7, 9, 11, 13, 15, 17, 19], 7));
}

int search(List<int> nums, int target) {
  int low  = 0;
  int high = nums.length - 1;

  while(low <= high) {
    int mid = ((low + high) / 2).floor();
    int indexMiddle = nums[mid];

    if(indexMiddle == target) {
      return mid;
    }

    if(indexMiddle > target) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }

  return -1;
}