void main() {
  print(heightChecker([1,1,4,2,1,3]));
}

int heightChecker(List<int> heights) {
  List<int> unsorted = List.from(heights);
  heights.sort();
  int res = 0;

  for(int i = 0; i < unsorted.length; i++) {
    if(unsorted[i] != heights[i]) {
      res++;
    }
  }
  return res;
}