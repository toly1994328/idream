void main(){

}

class Rectangle{
  Vec2 center;
  double width;
  double height;

  Rectangle(this.center,this.height,this.width);

  void draw(){
    String info = "绘制矩形，中心点(${center.x},${center.y})"
        "宽:$height, 高: $width";
    print(info);
  }

  void move(){
    center.x += 10;
    center.y += 10;
  }

  void rotate(){

  }
}

class Circle{
  Vec2 center;
  double radius;


  Circle(this.center,this.radius);

  void draw(){
    String info = "绘制圆形，中心点(${center.x},${center.y})"
        "半径:$radius";
    print(info);
  }

  void move(){
    center.x += 10;
    center.y += 10;
  }

  void rotate(){

  }
}


class Vec2{
  double x;
  double y;

  Vec2(this.x, this.y);
}