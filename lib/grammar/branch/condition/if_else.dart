import 'dart:math';

void main() {
  bool condition = Random().nextBool();
  if (condition) {
    // condition 为真时执行的代码块
  } else {
    // condition 为假时执行的代码块
  }

  // print(getLevel(55)); // E
  print(getLevel(70)); // D
  // print(getLevel(92)); // A
}

// E: [0,60)
// D: [60,70)
// C: [70,80)
// B: [80,90)
// A: [90,100]
String getLevel(double grade) {
  String level = '';
  if (grade >= 0 && grade < 60) {
    level = 'E';
  } else if (grade < 70) {
    level = 'D';
  } else if (grade < 80) {
    level = 'C';
  } else if (grade < 90) {
    level = 'B';
  } else {
    level = 'A';
  }
  return level;
}
