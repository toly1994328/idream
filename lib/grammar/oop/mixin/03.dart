void main(){
  Shape shape = Shape();
  shape.speed = 20;
  shape.move();//=====Shape move====
  print(shape is MoveAble);// true
}


mixin Position{
  Vec2 vec2 = Vec2(0, 0);
}

mixin MoveAble on Position{
  double speed = 10;

  void move(){
    vec2.x+=speed;
    vec2.y+=speed;
    print("=====$runtimeType move====");
  }
}

mixin PaintAble{
  double speed = 10;

  void paint(){
    print("=====$runtimeType paint====");
  }
}


class Shape with Position,MoveAble,PaintAble{


}

class Vec2{
  double x;
  double y;

  Vec2(this.x, this.y);
}