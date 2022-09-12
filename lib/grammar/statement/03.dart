main() {
  foo1(); // 方法语句
}

void foo1() {
  //类型 变量名 = 对象
  String toly = 'toly'; // 赋值语句
  // 等价于
  String toly2; // 声明语句
  toly2 = 'toly2'; // 赋值语句
  toly2 = toly; // 赋值语句
}

void foo2() {
  // 修饰符 类型 变量名 = 对象;
  const String t1 = 't1'; // 赋值语句

  // 修饰符 变量名 = 对象; (不推荐)
  final t2 = t1*2; // 赋值语句

  // t1 = t2;
}

