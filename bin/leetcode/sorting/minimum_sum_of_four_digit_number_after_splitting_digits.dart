import 'dart:math';

void main() {
  print(minimumSum(2932));
}

int minimumSum(int num) {
  var d = digits(num, 10);
  d.sort();

  var n1 = 10*(d[0]+d[1])+d[2]+d[3];
  var n2 = 10*(d[0]+d[2])+d[1]+d[3];

  return min(n1.round(), n2.round());

}

List<dynamic> digits(int n, int base) {
  var digits = [];
  while(n > 0) {
    digits.add(n % base);
    n ~/= base;
  }
  return digits;
}