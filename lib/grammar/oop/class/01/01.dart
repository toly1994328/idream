void main(){
  Vec2 p0 = Vec2(4,3);
  print("Vec2(${p0.x},${p0.y})"); // Vec2(4.0,3.0)
  p0.x = 15;
  print("Vec2(${p0.x},${p0.y})"); // Vec2(15.0,3.0)
}



class Vec2{
  double x;
  double y;

  Vec2(this.x, this.y);
}