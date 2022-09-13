main() {
  int count = 49; // 整型
  double pi = 3.14; // 浮点型

  // foo0();
  // foo1();
  // foo2();
  foo3();
}



foo0(){
  num a = 57;
  num b = 3.28;
  print("a:${a.runtimeType}===b:${b.runtimeType}");
}

foo1() {
  num b = 3.28;
  print(b.abs());  // 绝对值 : 3.28
  print(b.ceil()); // 向上取整: 4
  print(b.floor()); // 向下取整: 3
  print(b.round()); // 四舍五入取整: 3
  print(b.truncate()); // 去除小数部位取整: 3
  print(b.toStringAsFixed(1)); //四舍五入，保留几位小数，返回字符串: 3.3
}

foo2() {
  double result1 = double.parse("3.3");
  int result2 = int.parse("10");
}

foo3() {
  int a = 2022;
  print(a.toRadixString(2));//11111100110
  print(a.toRadixString(16));//7e6

  int value = int.parse('7e6',radix: 16);
  print(value); // 2022

  int value1 = int.parse('toly',radix: 36);
  print(value1); // 1384918
}
