void main() {
  iterate(3);
}
void iterate(int n) {
  for(int i = 0; i <= n; i++) {
    for(int j = i; j <= n; j++) {
      print('$i + $j = ${i+j}');
    }
  }
}