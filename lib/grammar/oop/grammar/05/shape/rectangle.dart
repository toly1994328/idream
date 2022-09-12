import 'shape.dart';
import '../vec/vec2.dart';

class Rectangle extends Shape{
  double width;
  double height;

  Rectangle(Vec2 center,{this.width=10,this.height=10}):super(center);

  @override
  String drawInChild() => "宽:$height, 高: $width";
}