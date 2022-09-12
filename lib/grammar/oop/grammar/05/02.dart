import 'shape/shape.dart';

void main(){
  AClass<Egg> eggType = AClass(Egg());
  AClass<int> intType = AClass(10);
  eggType.printType(); // 当前对象类型:Egg
  intType.printType(); // 当前对象类型:int

  Map<int,String> map = {1:"one"};
  String? info = find<int,String>(1, map);
}

class AClass<T>{
  final T memberT;
  AClass(this.memberT);

  void printType(){
    print("当前对象类型:${memberT.runtimeType}");
  }

  T getMemberT() => memberT;
}

// 多泛型
class BClass<T,V>{
  final T memberT;
  final V memberV;
  BClass(this.memberT,this.memberV);

  void printType(){
    print("当前对象类型T:${memberT.runtimeType}"
        "当前对象类型V:${memberV.runtimeType}");
  }

  T getMemberT() => memberT;
  V getMemberV() => memberV;
}

// 方法泛型
V? find<K,V>(K k,Map<K,V> map){
  return map[k];
}

// 泛型限定
class CClass<T extends Shape>{
  final T memberT;
  CClass(this.memberT);

  void draw(){
    memberT.draw();
  }
}

class Egg{
  final String name = "鸡蛋";
}

class TableTennis{
  final String name = "乒乓球";
}

