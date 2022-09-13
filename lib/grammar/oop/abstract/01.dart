
void main(){
  // Shape shape = Shape(Vec2(10,10));
}

abstract class Shape{
    Vec2 center;

    Shape(this.center);

    String debugLabelName();

    void printInfo(){
      String name = debugLabelName();
      print("【$name】center:(${center.x},${center.y})");
    }

    void move() {
      center.x += 10;
      center.y += 10;
      print("$runtimeType:move(10,10)==> center:(${center.x},${center.y})");
    }

  }

class Circle extends Shape{

  Circle(Vec2 center) : super(center);

  @override
  String debugLabelName() => "Circle";

}

class Vec2 {
  double x;
  double y;

  Vec2(this.x, this.y);
}

class A{

}

class B implements A{

}