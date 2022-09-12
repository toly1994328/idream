import 'shape.dart';
import '../vec/vec2.dart';
import 'package:idream/grammar/oop/grammar/02/vec/vec2.dart';


class Circle extends Shape{
  double radius;

  Circle(Vec2 center,{this.radius=10}):super(center);

  @override
  String drawInChild() => "半径:$radius";
}
