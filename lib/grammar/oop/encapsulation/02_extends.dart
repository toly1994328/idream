
void main(){

}

 class Shape{
  Vec2 center;

  Shape(this.center);

  void move(){
    center.x += 10;
    center.y += 10;
  }

  void rotate(){

  }
}

class Rectangle extends Shape{
  double width;
  double height;

  Rectangle(Vec2 center,{this.width=10,this.height=10}):super(center);

  void draw(){
    String info = "绘制矩形，中心点(${center.x},${center.y})"
        "宽:$height, 高: $width";
    print(info);
  }
}

class Circle extends Shape{
  double radius;

  Circle(Vec2 center,{this.radius=10}):super(center);

  void draw(){
    String info = "绘制圆形，中心点(${center.x},${center.y})"
        "半径:$radius";
    print(info);
  }
}

class Vec2{
  double x;
  double y;

  Vec2(this.x, this.y);
}