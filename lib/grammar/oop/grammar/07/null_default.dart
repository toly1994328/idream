void main() {
  foo(null);
  foo("toly");
}

void foo(String? arg) {
  String b = arg ?? "UNKNOWN";
  print(b);
}

