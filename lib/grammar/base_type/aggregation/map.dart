main() {
  // List<String> rmbUnits = ['元','角','分'];

  Map<String,String> dict = {
    'about': '关于',
    'boot': '启动',
    'card': '卡片',
  };
  print(dict['card']);
  dict['dog'] = '狗';
  dict['cat'] = '猫';
  dict['boot'] = '启动,靴子';
  print(dict.length);
  dict.remove('cat');



  // List<String> rmbUnits = [
  //   '零','壹','贰','叁','肆','伍','陆', '柒','捌','玖',
  //   '拾','佰','仟','萬','亿'
  // ];
  // foo2();
}

void foo1() {
  Set<String> cnNumUnits = {'零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'};
  cnNumUnits.add('玖');
  print(cnNumUnits.length);

  cnNumUnits.remove('零');
  print(cnNumUnits);

  cnNumUnits.addAll({'零', '元', '角', '分'});
  cnNumUnits.addAll(['拾', '佰', '仟', '萬', '亿']);
  cnNumUnits.removeAll({'元', '角', '分'});
}

void foo2() {
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];

  for (int i = 0; i < cnNumUnits.length; i++) {
    print(cnNumUnits[i]);
  }

  for (String element in cnNumUnits) {
    print(element);
  }

  cnNumUnits.forEach((String element) {
    print(element);
  });

  Iterator<String> it = cnNumUnits.iterator;
  while (it.moveNext()) {
    print(it.current);
  }
}
