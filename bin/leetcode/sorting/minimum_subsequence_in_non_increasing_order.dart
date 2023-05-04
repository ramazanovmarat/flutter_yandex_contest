void main() {
  print(minSubsequence([4,4,7,6,7]));
}

List<int> minSubsequence(List<int> nums) {
  int sum = nums.reduce((a, b) => a + b); // 28
  int subsum = 0, i = 0;
  nums.sort((a,b) => b.compareTo(a)); // 7 7 6 4 4
  List<int> l = [];
  while(sum >= subsum) {
    // первая итерация цикла 28 >= 0 , то sum = 28 - 7 = 21  subsum = 0 + 7 = 7 l.add([7, ])
    // вторая итерация цикла 21 >= 7 , то sum = 21 - 7 = 14  subsum = 7 + 7 = 14 l.add([7, 7, ])
    // третья итерация цикла 14 >= 14 , то sum = 14 - 6 = 8  subsum = 14 + 6 = 20 l.add([7, 7, 6])
    // четвертая итерация цикла 8 >= 20 условие не выполняется
    sum -= nums[i];
    subsum += nums[i];
    l.add(nums[i]);
    i++;
  }
  return l;
}