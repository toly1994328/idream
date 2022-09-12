void main(){
  Drawable drawable = Drawable();
  Vec2 p0 = Vec2(3, 4);
  drawable.draw(p0);
}

class Drawable{
  void draw(Vec2 vec2){
    print("绘制向量(${vec2.x},${vec2.y})");
  }
}

class Vec2{
  double x;
  double y;

  Vec2(this.x, this.y);
}