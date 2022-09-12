void main() {
  foo1();
}


void foo0(){
  int a = 65;
  print(a.toRadixString(2).padLeft(32, "0"));
  int b = 11;
  print(b.toRadixString(2).padLeft(32, "0"));

  // int c = a & b;
  // print(c);
  // print(c.toRadixString(2).padLeft(32, "0"));

  // int c = a | b;
  // print(c);
  // print(c.toRadixString(2).padLeft(32, "0"));

  // int c = ~b;
  // print(c);

  // int c = a ^ b;
  // print(c);
  // print(c.toRadixString(2).padLeft(32, "0"));
}

void foo1(){
  int a = 65;
  print(a.toRadixString(2).padLeft(32, "0"));

  // int c = a & b;
  // print(c);
  // print(c.toRadixString(2).padLeft(32, "0"));

  // int c = a << 2;
  // print(c.toRadixString(2).padLeft(32, "0"));
  // print(c);

  int c = a >> 2;
  print(c.toRadixString(2).padLeft(32, "0"));
  print(c);
}