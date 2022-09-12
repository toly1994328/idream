void main(){
  // String? name = null;
  // print(name is Object); // false
  // print(name is String); // false
  // print(name is Null); // true
  // say(name??"");

  // Person toly = Person();
  // toly.say();

  String? name = null;
  say(name!);
}

void say(String name){
  print("我的名字是:$name,有 ${name.length} 个字");
}


class Person{
  late String name;

  void say(){
    print("我的名字是:$name");
  }
}

