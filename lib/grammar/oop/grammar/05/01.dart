void main() {
  String input = "18715079839";
  bool checked = input.isPhone();
  print(checked); // true
  print("hello" > "toly"); // flase
}

extension JudgeStringExt on String {
  // final int count = 0;
  //
  // String toString()=> this.toString();

  bool isPhone() {
    const String reg =
        r'^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$';
    RegExp(reg).hasMatch(this);
    return RegExp(reg).hasMatch(this);
  }

  bool operator >(String other) {
    int thisCode = 0;
    int otherCode = 0;
    if (isNotEmpty) {
      thisCode = codeUnits.first;
    }
    if (other.isNotEmpty) {
      otherCode = other.codeUnits.first;
    }
    return thisCode > otherCode;
  }
}
