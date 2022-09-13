void main() {

}
void foo(){
  try {
    getMean("card");
  } catch (e,s) {
    print("${e.runtimeType}: ${e.toString()}");
    print("${s.runtimeType}: ${s.toString()}");
  }
}
void foo1(){
  try {
    getMean("card");
  } on NoElementInDictException catch(e,s){
    // 特定种类的异常处理
    print("${e.runtimeType}: ${e.toString()}");
    print("${s.runtimeType}: ${s.toString()}");
  } catch (e,s) {
    // 其余异常处理
  } finally{
    print("finally bloc call");
  }
}

void foo2(){
  try {
    getMean("about");
  } catch (e,s) {
    print("${e.runtimeType}: ${e.toString()}");
    print("${s.runtimeType}: ${s.toString()}");
  } finally{
    print("finally bloc call");
  }
}

String getMean(String arg) {
  if(arg.isEmpty){
    throw Exception("empty arg!");
  }
  Map<String, String> dict = {"card": "卡片", "but": "但是"};
  String? result = dict[arg];
  if (result == null) {
    throw NoElementInDictException("empty $arg mean in dict");
  }
  return result;
}

class NoElementInDictException implements Exception{
  final String arg;

  NoElementInDictException(this.arg);

  @override
  String toString() => "empty $arg mean in dict";
}
