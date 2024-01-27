
void main() {
  // C c = C();
  // c.log(); // B
}

class A {
  String name = "A";

  void log() {
    print(name);
  }
}

abstract class B{
  void log();
}

// class C with A, B {
//
//   @override
//   void log() {
//     super.log();// B
//     print("C");
//   }
// }
