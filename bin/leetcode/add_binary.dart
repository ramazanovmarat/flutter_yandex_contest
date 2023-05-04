void main() {

  print(addBinary('11', '1'));

}

String addBinary(String a, String b) {
  int i = a.length - 1;
  int j = b.length - 1;
  int carry = 0;
  StringBuffer sb = StringBuffer();
  while(i >= 0 || j >= 0 || carry > 0) {
    int sum = carry;
    if(i >= 0) {
      sum += int.parse(a[i]);
      i--;
    }
    if(j >= 0) {
      sum += int.parse(b[j]);
      j--;
    }
    sb.write(sum % 2);
    carry = sum ~/ 2;
  }
  return sb.toString().split('').reversed.join();
}