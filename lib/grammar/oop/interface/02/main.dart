void main(){

}

abstract class A{
  void run();
}

abstract class B{
  void run();
}

class C implements A,B{
  @override
  void run() {
    print("C");
  }
}