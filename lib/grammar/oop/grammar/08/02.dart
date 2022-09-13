typedef OperationFun = int Function(int a, int b);

main() {
  OperationFun addFun = (int a, int b) {
    return a + b;
  };

  print(addFun.runtimeType);
  print(addFun(10, 20));
}

class Operation {
  final OperationFun add;

  Operation({required this.add});
}
