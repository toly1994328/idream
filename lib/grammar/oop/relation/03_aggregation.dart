void main(){
  GraphicsCard graphicsCard = GraphicsCard("NVIDIA GeForce RTX 3060");
  Memory memory = Memory("DDR4", 32);
  Computer computer = Computer("toly mac",graphicsCard,memory);
  computer.printConfig();
}


class Computer{ // 电脑
  String name;
  GraphicsCard graphicsCard;
  Memory memory;

  Computer(this.name,this.graphicsCard,this.memory);

  void printConfig(){
    print("====电脑名称:[${name}]=====");
    print("====电脑显卡:[${graphicsCard.name}]=====");
    print("====电脑内存:[${memory.type}:${memory.size}GB]=====");
  }
}

class GraphicsCard{ // 显卡
  String name;
  GraphicsCard(this.name);
}

class Memory{ // 内存
  double size;
  String type;

  Memory(this.type,this.size);
}