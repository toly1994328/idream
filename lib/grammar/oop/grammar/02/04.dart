
import 'vec/vec2.dart';
import 'shape/shape.dart';
import 'shape/circle.dart';

void main(){
  // CClass<int> obj = CClass(99);
  CClass<Circle> obj = CClass(Circle(Vec2(0,2)));
}

// 泛型限定
class CClass<T extends Shape>{
  final T memberT;
  CClass(this.memberT);

  void draw(){
    memberT.draw();
  }
}
