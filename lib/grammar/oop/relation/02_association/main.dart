void main(){
  Computer computer = Computer("toly mac");
  User user = User(computer);
  user.pressStartButton();
}

class User{
  Computer computer;

  User(this.computer);

  void pressStartButton(){
    computer.open();
  }
}

class Computer{
  String name;
  User? owner;

  Computer(this.name);

  void open(){
    print("====电脑开机:[${name}]=====");
  }
}