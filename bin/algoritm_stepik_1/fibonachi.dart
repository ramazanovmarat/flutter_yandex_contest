

import 'dart:io';

void main() {
  stdout.write('Введите число фибоначчи: ');
  String input = stdin.readLineSync()!;
  int f = int.parse(input);
  print(fibonacci(f));
}

int fibonacci(int f) {
  if (f <= 1) {
    return f;
  }

  int previous = 0;
  int current = 1;

  for (int i = 2; i <= f; ++i) {
    int next = (previous + current) % 10;
    previous = current;
    current = next;
  }

  return current;
}