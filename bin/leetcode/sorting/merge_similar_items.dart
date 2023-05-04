void main() {
  print(mergeSimilarItems([[1,3],[2,2]], [[7,1],[2,2],[1,4]]));
}

List<List<int>> mergeSimilarItems(List<List<int>> items1, List<List<int>> items2) {

  List<List<int>> result = [];

  for(int i = 0; i < items1.length; i++) {
    bool found = false;
    for(int j = 0; j < items2.length; j++) {
      if(items1[i][0] == items2[j][0]) {
        result.add([items1[i][0], items1[i][1] + items2[j][1]]);
        found = true;
      }
    }
    if(!found) {
      result.add(items1[i]);
    }
  }

  for(int i = 0; i < items2.length; i++) {
    bool found = false;
    for(int j = 0; j < result.length; j++) {
      if(items2[i][0] == result[j][0]) {
        found = true;
      }
    }
    if(!found) {
      result.add(items2[i]);
    }
  }

  result.sort((a, b) => a[0].compareTo(b[0]));
  return result;
}