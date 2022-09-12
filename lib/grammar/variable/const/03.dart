main() {
 Person p0 = const Person('张风捷特烈'); // const 修饰构造
 const Person p1 =  Person('张风捷特烈');// const 修饰量
 p0 = Person('toly');
 // p1 = Person('toly');
 print(identical(p0, p1));
}

class Person {
 final String name;

 const Person(this.name);
}
