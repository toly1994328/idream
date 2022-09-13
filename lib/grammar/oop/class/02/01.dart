import 'dart:math' as math;

void main() {
  Vec2 p0 = Vec2(4, 3);
  print(p0.getInfo()); // Vec2(4.0,3.0)
  print(p0.getLength()); // 5.0
  p0.x = 15;
  print(p0.getInfo()); // Vec2(15.0,3.0)
}

class Vec2 {
  double x;
  double y;

  Vec2(this.x, this.y);

  String getInfo() => "Vec2($x,$y)";

  double getLength() => math.sqrt(x * x + y * y);
}
