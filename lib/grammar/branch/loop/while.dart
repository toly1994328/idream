void main() {
  foo4();
}


void foo1() {
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  int i = 0;
  bool condition = i < cnNumUnits.length;
  while (condition){
    print(cnNumUnits[i]);
    i++;
    condition = i < cnNumUnits.length;
  }
}

void foo2(){
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  Iterator<String> it = cnNumUnits.iterator;
  while(it.moveNext()){
    print(it.current);
  }
}

void foo3(){
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  Iterator<String> it = cnNumUnits.iterator;
  for(;it.moveNext();){
    print(it.current);
  }
}

void foo4(){
  List<String> cnNumUnits = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  int index = 0;
  if(cnNumUnits.isEmpty) return;
  do{
    print(cnNumUnits[index]);
    index++;
  }while(index<cnNumUnits.length);
}