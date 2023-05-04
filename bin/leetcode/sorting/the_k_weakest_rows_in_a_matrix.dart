void main() {
  print(kWeakestRows([
    [1,1,0,0,0],
    [1,1,1,1,0],
    [1,0,0,0,0],
    [1,1,0,0,0],
    [1,1,1,1,1]], 3));
}

// List<int> kWeakestRows(List<List<int>> mat, int k) {
//   List<int> indexes =  List.generate(mat.length, (index) => index);
//   indexes.sort((a,b) => compareLists(mat[a], mat[b]));
//   List<int> firstK = indexes.take(k).toList();
//   // List<int> firstK = [];
//   // for(int i = 0; i < k; i++) {
//   //   firstK.add(indexes[i]);
//   // }
//   return firstK;
// }
//
// int compareLists(List<int> list1, List<int> list2) {
//   for(int i = 0; i < list1.length; i++) {
//     if(list1[i] != list2[i]) {
//       return list1[i] - list2[i];
//     }
//   }
//   return 0;
// }

List<int> kWeakestRows(List<List<int>> mat, int k) {
  List<int> result = mat.map((e) => e.where((element) => element == 1).length).toList();
  print(result);
  var res2 = result.map((e) => e).toList(); // 2, 4, 1, 2, 5
  res2.sort(); // 1, 2, 2, 4, 5
  List<int> res = [];
  for(int i = 0; i < res2.length; i++) { // 0 1 2 3 4 5
    var index = result.indexOf(res2[i]);
    res.add(index);
    result[index] = -1;
  }
  return res.take(k).toList();
}