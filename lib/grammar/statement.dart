main() {
  foo(); // 方法语句
}

// 我从哪里来？
void foo() {
  // 我是谁?
  String str = 'hello, world!'; // 赋值语句
  // 我要到哪里去？
  print(str); // 方法语句
}

class Person {
  final String name;

  Person(this.name);

  void say(){ // 方法语句
    print('我是 $name'); // 方法语句
  }
}
