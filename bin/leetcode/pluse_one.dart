void main() {
  print(plusOne([1,2,9]));
}

List<int> plusOne(List<int> digits) {
  int n = digits.length;

  for (int i = n - 1; i >= 0; i--) {
    if (digits[i] == 9) {
      digits[i] = 0;
    } else {
      digits[i]++;
      return digits;
    }
  }

  // если мы дошли до этой точки, то все цифры были равны 9
  digits.insert(0, 1);
  return digits;
}