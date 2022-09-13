void main() {
  Circle circle = Circle(Vec2(100,100),radius: 50);
  Rectangle rectangle = Rectangle(Vec2(50,50));
  circle.move();
  rectangle.move();
}

class Shape {
  Vec2 center;

  Shape(this.center);

  void move() {
    center.x += 10;
    center.y += 10;
    print("$runtimeType:move(10,10)==> center:(${center.x},${center.y})");
  }
}

class Circle extends Shape{
  double radius;
  Circle(Vec2 center,{this.radius =10}) : super(center);
}

class Rectangle extends Shape{
  double width;
  double height;

  Rectangle(Vec2 center,{this.width=20,this.height=20}) : super(center);
}

class Vec2 {
  double x;
  double y;

  Vec2(this.x, this.y);
}
