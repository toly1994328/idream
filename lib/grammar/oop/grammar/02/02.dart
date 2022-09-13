import 'shape/shape.dart';

void main(){
  AClass<Egg> eggType = AClass(Egg());
  AClass<int> intType = AClass(10);
  eggType.printType(); // 当前对象类型:Egg
  intType.printType(); // 当前对象类型:int
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

class Egg{
  final String name = "鸡蛋";
}

class TableTennis{
  final String name = "乒乓球";
}

