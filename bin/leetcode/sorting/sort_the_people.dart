void main() {
  print(sortPeople(["Alice","Bob","Bob"], [180,165,170]));
}

List<String> sortPeople(List<String> names, List<int> heights) {
  Map<int, String> map = {};
  for(int i = 0; i < names.length; i++) {
    map.addAll({heights[i] : names[i]});
  }
  map = Map.fromEntries(map.entries.toList()
    ..sort((a,b) => b.key.compareTo(a.key)));
  return map.values.toList();
}