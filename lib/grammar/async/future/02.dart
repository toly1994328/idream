import 'dart:io';

import 'package:path/path.dart' as path;

void main() {
  doTask1();
  doTask2();
  doTask3();
}

void doTask1() {
  print('doTask1');
}

// void doTask2() {
//   File file = File(path.join(Directory.current.path, "l10n.yaml"));
//   print('开始读取====l10n.yaml===');
//   String content = file.readAsStringSync();
//   print('结束读取====l10n.yaml===');
//   print('l10n.yaml 内容: $content');
// }


void doTask2(){
  File file = File(path.join(Directory.current.path,"l10n.yaml"));
  print('开始读取====l10n.yaml===');
  file.readAsString().then((value){
    print('结束读取====l10n.yaml===');
    print('l10n.yaml内容: $value');
  });
}

void doTask3() {
  print('doTask3');
}
