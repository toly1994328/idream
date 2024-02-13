void main() {
  Vec2 p0 = Vec2(3, 4);
  Vec2 p1 = Vec2(2, 5);
  Vec2 p2 = p0 + p1 + p0 + p1;
  // Vec2 p2 = p0.add(p1).add(p0).add(p2);
  print(p2); //Vec2(5.0,9.0)

  {
    Vec2 p0 = Vec2(3, 4);
    double x = p2[true];
    print(p0[true]);
  }
}

class Vec2 {
  final double x;
  final double y;

  Vec2(this.x, this.y);

  Vec2 add(Vec2 other) => Vec2(other.x + x, other.y + y);

  Vec2 operator +(Vec2 other) => Vec2(other.x + x, other.y + y);

  double operator [](bool flag) => flag ? x : y;

  @override
  String toString() => "Vec2($x,$y)";
}
