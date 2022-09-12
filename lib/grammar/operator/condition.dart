void main() {}

void foo1() {
  int a = 5;
  int b = 6;
  print(a > b); // false
  print(a < b); // true
  print(a == b); // false
  print(a != b); // true
  print(a >= b); // false
  print(a <= b); // true
}

// num getLager(num a , num b){
//   bool result = a > b;
//   if(result){
//     return a;
//   }else{
//     return b;
//   }
// }

num getLager(num a, num b) {
  num result = a > b ? a : b;
  return result;
}
