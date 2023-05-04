void main() {
  print(deleteGreatestValue([
    [1,2,4], // => [1,2] => [1]  => 4  + 3 + 1 = 8
    [3,3,1], // => [3,1] => [1]
  ]));
}

int deleteGreatestValue(List<List<int>> grid) {
  int result = 0;
  
  for (var element in grid) {
    element.sort((a,b) => b.compareTo(a));
  }
  print('GRID: $grid');

  for(int i = 0; i < grid[0].length; i++) {
    int prev = 0;
    for(int j = 0; j < grid.length; j++) {
        int newNum = grid[j][i];
        if(newNum > prev) {
          prev = newNum;
        }
        print('NewNum: $newNum');
    }
    print('Prev: $prev');
    result += prev;
  }
  return result;
}