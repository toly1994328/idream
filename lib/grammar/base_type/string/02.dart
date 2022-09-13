main() {
  foo1();
  foo2();
}

foo1() {
  String addr = '逍遥津公园';
  String name = '小芳';
  String result = '今天我和' + name + '一起去' + addr + '玩，很开心！';
  print(result);
}

foo2() {
  String addr = '逍遥津公园';
  String name = '小芳';
  String result = '今天我和$name一起去$addr玩，很开心！';
  print(result);
}
