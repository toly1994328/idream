Player player1 = Player('捷特','男',200);
int countNo = 100;

main(){
  // Player player1 = Player('捷特','男',200);
  // Player player2 = Player('捷特','男',190);
  // Player player3 = Player('捷特','男',180);
  // Player player4 = Player('捷特','男',170);
  //
  // Player winner;
  test(player1);
  print(player1.name);

  // test2(countNo);
  // print(countNo);
}

void test(Player player){
  print(identical(player, player1));
  player = Player('toly','男',200);
  print(identical(player, player1));
  // player = Player('toly','男',200);
  player.name = 'toly49';
}

void test2(int count){
  print(identical(count, countNo));
  count = 200;
}


class Player {
  Player(this.name, this.gender, this.score);
  String name;
  String gender;
  int score;

}
