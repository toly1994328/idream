main() {
  Person p0 = const Person('张风捷特烈');
  Person p1 = const Person('张风捷特烈');
  print(identical(p0, p1));
}

class Person {
  final String name;

  const Person(this.name);
}
