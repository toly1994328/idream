import 'dart:ui';

void main(){
  Shape shape = Shape();
  shape.speed = 20;
  shape.move();//=====Shape move====
  print(shape is MoveAble);// true
}


mixin Position{
  Vec2 vec2 = Vec2(0, 0);
}

mixin MoveAble {
  double speed = 10;

  void move(){
    print("=====$runtimeType move====");
  }
}

mixin PaintAble{
  late Paint painter;
  void paint(){
    print("=====$runtimeType paint====");
  }
  void init();
}


class Shape with MoveAble,PaintAble{
  @override
  void init() {
    painter = Paint();
  }
}

class Vec2{
  double x;
  double y;

  Vec2(this.x, this.y);
}