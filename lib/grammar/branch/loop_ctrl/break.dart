main() {
  foo();
}

//
void foo() {
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    if(i.isEven){// 如果是偶数
      break; //tag1
    }
    sum += i; //tag2
    print("第 $i 次循环，计入 sum");
  }
  print("sum: $sum");
}
