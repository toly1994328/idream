void main(){
  String? name = null;
  print(name is Object); // false
  print(name is String); // false
  print(name is Null); // true
  say(name??"");


}

void say(String name){
  print("我的名字是:$name,有 ${name.length} 个字");
}


