main() {}

abstract class A {
  void run();

  void log(){
    run();
  }
}

class C implements A {
  @override
  void run() {

  }

  @override
  void log() {

  }
}

// class C implements A {
//
//   @override
//   void log() {}
//
//   @override
//   void run() {}
// }
