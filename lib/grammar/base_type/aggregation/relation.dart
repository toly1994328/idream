main(){


foo2();

}

foo0(){
  List<String> cnNumUnits = ['零', '壹', '贰', '叁','贰', '贰'];
  Set<String> cnNumSet = cnNumUnits.toSet();
  print(cnNumSet); // {零, 壹, 贰, 叁}
  List<String> cnNumUnique  = cnNumSet.toList();
  print(cnNumUnique); // [零, 壹, 贰, 叁]
}

foo1(){
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  Map<int,String> cnNumMap = cnNumUnits.asMap();
  print(cnNumMap);
}

foo2(){
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖','拾','佰','仟','萬'];
  Set<int> numUnitsSet = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,100,1000,10000};
  Map<int,String> map = Map.fromIterables(numUnitsSet,cnNumUnits);
  print(map);
}
foo3(){
  Map<String,String> dict = {'about': '关于', 'boot': '启动', 'card': '卡片'};
  dict.keys.toList();
  dict.values.toList();

  dict.keys.toSet();
  dict.values.toSet();
}
