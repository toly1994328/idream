import 'conflict1.dart';
import 'conflict2.dart' as c2;

void main(){
  Conflict conflict1 = Conflict("Conflict1");

  c2.Conflict conflict2 = c2.Conflict("Conflict2");
}