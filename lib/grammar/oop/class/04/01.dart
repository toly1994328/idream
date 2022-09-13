import 'dart:math' as math;

void main() {
  Vec2 p0 = Vec2(4, 3,name: "P0");
  print(p0.length); // Vec2(4.0,3.0)
  p0.name = "P0";
  print(p0.getInfo());

  Vec2 p1 = Vec2.polar(10, math.pi/4);
  print(p1.getInfo());
}

class Vec2 {
  double x;
  double y;
  String? _name;

  // Vec2(double x, double y)
  //     : this.x = x,
  //       this.y = y;

  // Vec2(double argX, double argY)
  //     : x = argX,
  //       y = argY;

  Vec2(this.x, this.y, {String? name}) : _name = name;

  Vec2.polar(double length,double rad):
        x = length*math.cos(rad),
        y = length*math.sin(rad);


  String getInfo() => "${name}Vec2($x,$y)";

  double get length => math.sqrt(x * x + y * y);

  String get name => _name ?? "";

  set name(String? value) {
    if (value == null) {
      _name = "";
    } else {
      _name = value + ": ";
    }
  }
}
