main() {
  foo(); // 方法语句
}

// 我从哪里来？(在哪里)
void foo() {
  // 我是谁?(是什么)
  Person toly = Person('toly'); // 赋值语句
  // 我要到哪里去？(做什么)
  toly.say(); // 方法语句
}

class Person {
  final String name; // 声明语句

  Person(this.name); // 方法语句

  void say(){
    print('我是 $name'); // 方法语句
  }
}
