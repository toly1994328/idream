main() {}

class A {
  final String name;

  A(this.name);

  void run() {
    print("run in a");
  }
}

class B {
  final String name;

  B(this.name);

  void run() {
    print("run in a");
  }

  void log() {
    print("log in a");
  }
}

class C implements A, B {
  @override
  String get name => "C";

  @override
  void log() {}

  @override
  void run() {}
}
