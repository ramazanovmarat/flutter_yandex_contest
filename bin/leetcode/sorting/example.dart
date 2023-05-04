void main() {
  selectionSort([9,4,6,2,8,1,267,87,12,1000]);
}

void selectionSort(List<int> list) {
  int n = list.length;

  for(int i = 0; i < n; i++) {
    int minIndex = i;
    for(int j = i + 1; j < n; j++) {
      if(list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    int temp = list[minIndex]; // временно храним значение минимального элемента, найденного во время внутреннего цикла, в переменной temp.
    print('TEMP : $temp');
    list[minIndex] = list[i]; // заменяем минимальный элемент, найденный во внутреннем цикле, на текущий элемент в позиции i во внешнем цикле. Это делается для того, чтобы убедиться, что текущий элемент находится в правильной позиции в отсортированном списке.
    print('LIST[minIndex] : ${list[minIndex]}');
    list[i] = temp; // заменяем текущий элемент в позиции i во внешнем цикле значением, хранящимся в temp. Это эффективно меняет минимальный элемент, найденный во внутреннем цикле, на текущий элемент в позиции i во внешнем цикле.
    print('LIST[i] : ${list[i]}');
    // Выполняя эту замену, мы гарантируем, что наименьший элемент будет перемещен в начало списка и, таким образом, окажется в правильном отсортированном положении. Затем мы продолжаем итерации по списку,
    // находя следующий наименьший элемент и меняя его местами в следующей позиции, пока весь список не будет отсортирован по возрастанию.
  }
  print(list);
}
