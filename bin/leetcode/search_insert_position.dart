void main() {
  print(searchInsert([1,3,5,6,7], 6));
}

int searchInsert(List<int> nums, int target) {
  int low = 0;
  int high = nums.length - 1;
  while(low <= high) {
    int mid = (low + high) ~/ 2; // находим средний элемент
    if(nums[mid] == target) {
      return mid; // цель найдена
    } else if(nums[mid] < target) {
      low = mid + 1; // цель находится в правой половине
    } else {
      high = mid - 1;
    }
  }

  return low;  // цель не найдена, возвращаем место вставки
}