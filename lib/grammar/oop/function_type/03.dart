typedef OperationFun = int Function(int a, int b);

main() {
  FishMan man = FishMan(hook: (String name) {
    print("钓到一条$name");
  });

  Pond pond = Pond(fishMan: man);
  pond.emitFish("鲫鱼");
}

typedef OnBiteCallBack = void Function(String name);

class FishMan {
  final OnBiteCallBack hook;

  FishMan({required this.hook});
}

class Pond {
  FishMan fishMan;
  Pond({required this.fishMan});

  void emitFish(String name) {
    fishMan.hook(name);
  }
}
