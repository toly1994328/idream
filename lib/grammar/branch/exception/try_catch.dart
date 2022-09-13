void main(){
  try{
    task1('a');
  }catch(e,s){
    print("${e.runtimeType}: ${e.toString()}");
    print("${s.runtimeType}: ${s.toString()}");
  }
  task2();
}

int task1(String num){
  return int.parse(num);
}

void task2(){
  print("Task2");
}