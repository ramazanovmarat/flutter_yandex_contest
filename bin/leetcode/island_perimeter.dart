void main() {
  print(islandPerimeter([
    [0,1,0,0],
    [1,1,1,0],
    [0,1,0,0],
    [1,1,0,0],
  ]));
}

int islandPerimeter(List<List<int>> grid) {
  int perimeter = 0;
  int rows = grid.length;
  int cols = grid[0].length;

  for(int i = 0; i < rows; i++) {
    for(int j = 0; j < cols; j++) {
      if(grid[i][j] == 1) {
        // проверяем клетки сверху, снизу, слева и справа от текущей клетки
        if(i == 0 || grid[i-1][j] == 0) perimeter++; // Проверка соседа сверху
        if(i == rows - 1 || grid[i+1][j] == 0) perimeter++; // Проверка нижнего соседа
        if(j == 0 || grid[i][j-1] == 0) perimeter++; // Проверка левого соседа
        if(j == cols - 1 || grid[i][j+1] == 0) perimeter++; // Проверка правого соседа
      }
    }

  }

  return perimeter;
}