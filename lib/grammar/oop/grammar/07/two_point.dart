// void main() {
//   Person toly = Person();
//   toly.name = "toly";
//   toly.age = 28;
//   toly.log();
// }

void main() {
  Person toly = Person();
  toly..name = "toly"..age = 28..log();
}

class Person {
  String name = '';
  int age = 0;

  void log() {
    print("name:$name,age:$age");
  }
}
