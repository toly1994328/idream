import 'package:flutter/cupertino.dart';

void main() {
  C c = C();
  c.log(); // B
}

mixin A {
  String name = "A";

  void log() {
    print(name);
  }
}

mixin B {
  String name = "B";

  void log() {
    print(name);
  }
}

class C with A, B {

  @override
  void log() {
    super.log();// B
    print("C");
  }
}
