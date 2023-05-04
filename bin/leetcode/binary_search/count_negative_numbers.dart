void main() {
  print(countNegatives([
    [4,3],
    [3,2],
  ]));
}

int countNegatives(List<List<int>> grid) {
  final result = [];
  int rows = grid.length;
  int cols = grid[0].length;

  for(int i = 0; i < rows; i++) {
    for(int j = 0; j < cols; j++) {
      if(grid[i][j].isNegative) {
        result.add(grid[i][j]);
      }
    }
  }
  return result.length;
}