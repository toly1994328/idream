import 'dart:math' as math;

void main() {
  Vec2 p0 = Vec2(4, 3);
  print(p0.length); // Vec2(4.0,3.0)
  p0.name = "P0";
  print(p0.getInfo());
}

class Vec2 {
  double x;
  double y;
  String? _name;
  Vec2(this.x, this.y);

  String getInfo() => "${name}Vec2($x,$y)";

  double get length => math.sqrt(x * x + y * y);

  String get name => _name ?? "";

  set name(String? value) {
    if(value == null){
      _name = "";
    }else{
      _name = value+": ";
    }
  }
}
