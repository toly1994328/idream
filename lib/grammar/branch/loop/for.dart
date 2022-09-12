main() {}

void foo1() {
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  for (int i = 0; i < cnNumUnits.length; i++) {
    print(cnNumUnits[i]);
  }
}


void foo2() {
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  int i = 0;
  bool condition = i < cnNumUnits.length;
  for (; condition; ) {
    print(cnNumUnits[i]);
    i++;
    condition = i < cnNumUnits.length;
  }
}

void foo3() {
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  for (String element in cnNumUnits) {
    print(element);
  }
}

