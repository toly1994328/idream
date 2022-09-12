import 'dart:math' as math;


void main() {

  Person.nation = "唐朝";
  print(Person.nation); // 唐朝
  Person p0 =  Person("甲");
  Person p1 =  Person("乙");
  Person p2 =  Person("丙");
  p1.say();
  p2.say();
  Person.nation = "宋朝";
  p1.say();
  p2.say();
  Person.printNation(); // 现在朝代是: 宋朝
  // p0.x = 5;
}

class Person {
 String name;
 static String nation = "";

 Person(this.name);

 static void printNation(){
   print("现在朝代是: $nation");
   // say(); // 静态量无法访问普通成员
   // print("我叫$name");
 }

 void say(){
   print("我叫$name,我是$nation人");
 }
}
