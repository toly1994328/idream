void main(){

}

class A{
  String name;

  A(this.name);

  void run(){
    print("B");
  }
}

class B{
  String name;

  B(this.name);

  void run(){
    print("B");
  }
}

class C extends A{
  C(String name) : super(name);
}