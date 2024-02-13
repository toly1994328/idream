main() {
  foo4();
}

foo1() {
  String a = 'hello, toly';
  String b = "hello, toly";
  String c = '''hello, toly''';
  String d = """hello, toly""";
}

foo2() {
  String a = 'hello, "toly"';
  String b = "hello, \"toly\"";
}

foo3() {
  String a = 'hello, \'toly\'';
  String b = "hello, 'toly'";
}

foo4() {
  String a = '''
'hello', "toly"
  ''';
  String b = """
    'hello', 
    "toly"
  """;
}
