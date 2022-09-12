void main() {
  foo3();
}

void foo0() {
  int age = 14;
  double height = 1.39;

  bool value = age < 16 && height < 1.4;
}

void foo1() {
  int age = 14;
  double height = 1.59;

  bool value = age < 16 || height < 1.4;
}

void foo2() {
  int age = 14;
  double height = 1.59;

  bool allow = age < 16 || height < 1.4;
  if (!allow) {
    print("不允许入内!");
  }
}

void foo3() {
  int age = 10;
  bool free = age < 12 || check();
}

bool check() {
  print("call check");
  return true;
}
