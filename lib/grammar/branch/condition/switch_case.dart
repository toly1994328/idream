main(){
 String status =  getLightStatus(TrafficLightStatus.blue);
 print(status); // 绿灯，应许通行
}

enum TrafficLightStatus{
  red,
  yellow,
  blue,
  none
}

String getLightStatus(TrafficLightStatus status){
  String result = "";
  switch (status){
    case TrafficLightStatus.red:
      result = "红灯，禁止通行";
      break;
    case TrafficLightStatus.yellow:
      result = "黄灯，请您稍后";
      break;
    case TrafficLightStatus.blue:
      result = "绿灯，应许通行";
      break;
    case TrafficLightStatus.none:
      result = "信号灯故障，请联系维修人员";
      break;
  }
  return result;
}



String getPersonName(Person person){
  const Person toly =  Person("捷特");
  const Person ls =  Person("龙少");
  switch (person){
    case toly:
      return toly.name;
    case ls:
      return ls.name;
  }
  return "none";
}

class Person{
  final String name;
  const Person(this.name);
}