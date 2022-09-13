import 'dart:math' as math;

class _Vec2 {
  double x;
  double y;
  String? _name;

  _Vec2(this.x, this.y, {String? name}) : _name = name;

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