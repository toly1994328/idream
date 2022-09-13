main() {
  // List<String> rmbUnits = ['元','角','分'];

  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];

  // List<String> rmbUnits = [
  //   '零','壹','贰','叁','肆','伍','陆', '柒','捌','玖',
  //   '拾','佰','仟','萬','亿'
  // ];
  foo2();
}


void foo1() {
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '六', '柒', '捌', '玖'];
  // 增加
  cnNumUnits.add('拾');
  cnNumUnits.add('佰');
  cnNumUnits.addAll(['仟', '萬', '亿']);
  cnNumUnits.insert(2, '点');
  cnNumUnits.insertAll(2, ['横', '撇']);
  print(cnNumUnits);
  // 删除
  cnNumUnits.removeAt(2);
  cnNumUnits.removeAt(2);
  cnNumUnits.remove('点');
  print(cnNumUnits);
  // 修改
  cnNumUnits[6] = '陆';
  print(cnNumUnits);

  // 访问
  print(cnNumUnits[6]); //陆
  print(cnNumUnits[9]); //玖

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
