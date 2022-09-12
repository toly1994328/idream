import 'dart:async';
import 'dart:io';

import 'package:path/path.dart' as path;

void main() {
  doTask1();
  doTask2();
  doTask3();
}

int fileLength = 0;
int counter = 0;

void doTask2() async {
  File file = File(path.join(Directory.current.path, "assets", "Jane Eyre.txt"));
  print("开始读取 Jane Eyre.txt ");
  fileLength = await file.length();
  Stream<List<int>> stream = file.openRead();
  stream.listen(_onData, onDone: _onDone);
}

void _onData(List<int> bytes) {
  counter += bytes.length;
  double progress = counter * 100 / fileLength;
  DateTime time = DateTime.now();
  String timeStr = "[${time.hour}:${time.minute}:${time.second}:${time.millisecond}]";
  print(timeStr + "=" * (progress ~/ 2) + '[${progress.toStringAsFixed(2)}%]');
}

void _onDone() {
  print("读取 Jane Eyre.txt 结束");
}

void doTask1() {
  print('doTask1');
}

void doTask3() {
  print('doTask3');
}
