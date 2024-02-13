void main() {
  Vec2 p0 = Vec2(3, 4);
  Vec2 p1 = Vec2(2, 5);
  // Vec2 p2 = p0.add(p1);
  Vec2 p2 = p0 + p1;
  print(p2[1]);
  Vec2 p3 = ~p2;
  print(p3);
  print(p3 == p2);
}

class Vec2 {
  final double x;
  final double y;

  Vec2(this.x, this.y);

  Vec2 operator +(Vec2 other) {
    return Vec2(x + other.x, y + other.y);
  }

  Vec2 operator ~(){
    return Vec2(x, y);
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Vec2 &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  double operator [](int index){
    if(index==0) return x;
    if(index==1) return y;
    throw 'error';
  }

  Vec2 add(Vec2 other) {
    return Vec2(x + other.x, y + other.y);
  }

  @override
  String toString() => "Vec2($x,$y)";
}
