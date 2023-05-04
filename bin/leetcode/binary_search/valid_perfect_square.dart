import 'dart:math';

void main() {
  print(isPerfectSquare(14));
}

bool isPerfectSquare(int num) {
  return sqrt(num) * sqrt(num) == num && sqrt(num) % 1 == 0 ? true : false;
}