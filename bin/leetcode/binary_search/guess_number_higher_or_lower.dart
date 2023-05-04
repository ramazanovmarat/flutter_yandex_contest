void main() {
  print(guessNumber(5));
}

int secretNumber = 300;

int guess(int num) {
  if(num == secretNumber) {
    return 0;
  } else if(num < secretNumber) {
    return 1;
  } else {
    return -1;
  }
}

int guessNumber(int n) {
  int start = 1;
  int end = n;

  while(start <= end) {
    int mid = ((start + end) / 2).floor();
    int result = guess(mid);
    if(result == 0) {
      return mid;
    }
    if(result == -1) {
      end = mid - 1;
    } else {
      start = mid + 1;
    }
  }
  return -1;
}