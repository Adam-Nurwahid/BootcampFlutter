void main(List<String> args) {
  print(range(30, 23, 3));
  print(range(3, 23, 30));
}

List<int> range(int num1, int num2, int step) {
  List<int> result = [];
  if (num1 < num2) {
    for (int i = num1; i <= num2; i += step) {
      result.add(i);
    }
  } else {
    for (int i = num1; i >= num2; i -= step) {
      result.add(i);
    }
  }
  return result;
}
