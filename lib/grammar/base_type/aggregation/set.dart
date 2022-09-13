main() {
  // List<String> rmbUnits = ['元','角','分'];

  Set<String> cnNumUnits = {'零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'};
  Set<String> part = {'零', '壹', '贰', '元', '角', '分'};

  print(cnNumUnits.intersection(part)); // 交集
  print(cnNumUnits.union(part)); // 并集
  print(cnNumUnits.difference(part)); // 差集

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
