
void main() {
  Vec2 p0 = Vec2(4, 3,name: "P0");
  print(p0._name); // tag1
}

class Vec2 {
  double x;
  double y;
  String? _name;

  Vec2(this.x, this.y, {String? name}) : _name = name;
}
