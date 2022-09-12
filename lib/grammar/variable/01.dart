
main(){
  int n = 85; // 头数
  int m = 194; // 足数

  int y = (m - n*2) ~/ 2;
  int x = n - y;
  print("雉:$x  兔:$y");
}