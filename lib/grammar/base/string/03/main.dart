main() {
  // foo1();
  foo5();
}

foo1() {
  String name = 'toly1994';
  print(name[4]);//1
  print(name[name.length-1]); // 4
  print(name.substring(4,name.length-1));//199
}

foo2() {
  String name = '  toly 1994 ';
  print(name.trim());//toly空1994
  print(name.trimLeft()); //toly空1994空
  print(name.trimRight());//空空toly空1994
}

foo3() {
  String name = 'tolY1994 ';
  print(name.toUpperCase());//TOLY1994
  print(name.toLowerCase()); //toly1994
}

foo4() {
  String name = 'toly1994';
  print(name.startsWith('T'));
  print(name.endsWith('4'));
  print(name.contains('99'));
}

foo5() {
  String name = 'toly 1994';
  print(name.replaceAll(' ','_')); //toly_1994
  print(name.split(' ')); //[toly, 1994]

}
