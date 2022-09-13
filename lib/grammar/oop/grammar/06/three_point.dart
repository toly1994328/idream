
void main() {
  List<int> list = [0, 1, 2, 3, 4];
  List<int> list2 = [6, ...list, 7];
  print(list2); // [6, 0, 1, 2, 3, 4, 7]
}
