import 'shape/shape.dart';

void main(){
  Map<int,String> map = {1:"one"};
  String? info = find<int,String>(1, map);
}

// 方法泛型
V? find<K,V>(K k,Map<K,V> map){
  return map[k];
}

