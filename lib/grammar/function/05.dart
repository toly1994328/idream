main() {
  String s1 = repeat();
  print(s1);

  String s2 = repeat(src: 'toly', count: 5);
  print(s2);
}

String repeat({
  String src = '张风捷特烈',
  int count = 2,
}) {
  return src * count;
}
