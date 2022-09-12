main() {
  solution(head: 85, foot: 194);
  solution(foot: 194, head: 85,);
}

void solution({
  required int head,
  required int foot,
}) {
  print("头数:$head  足数:$foot");
  int y = (foot - head * 2) ~/ 2;
  int x = head - y;
  print("雉数:$x  兔数:$y");
}

