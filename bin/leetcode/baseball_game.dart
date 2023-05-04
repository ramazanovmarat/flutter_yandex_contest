void main() {
  print(calPoints(["5","2","C","D","+"]));
}

int calPoints(List<String> operations) {
  List<int> stack = [];
  int sum = 0;
  for(String op in operations) {
    if(op == '+') {
      int last = stack[stack.length - 1];
      int secondLast = stack[stack.length - 2];
      int score = last + secondLast;
      stack.add(score);
      print(stack);
      sum += score;
    }
    else if(op == 'D') {
      int last = stack[stack.length - 1];
      int score = last * 2;
      stack.add(score);
      sum += score;
    }
    else if(op == 'C') {
      int last = stack.removeLast();
      sum -= last;
    } else {
      int score = int.parse(op);
      stack.add(score);
      sum += score;
    }
  }
  return sum;
}