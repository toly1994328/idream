import '../vec/vec2.dart';

abstract class Shape{
  Vec2 center;

  Shape(this.center);

  void move(){
    center.x += 10;
    center.y += 10;
  }

  void draw(){
    String info = "绘制矩形，中心点(${center.x},${center.y})\n"
        "${drawInChild()}";
    print(info);
  }

  String drawInChild();

  void rotate(){

  }
}