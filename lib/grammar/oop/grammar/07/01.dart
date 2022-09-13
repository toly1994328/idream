void main() {
  GenderType type = GenderType.male;
  List<GenderType> li = GenderType.values;
}

String showInfoByGenderType(GenderType type){
  switch(type){
    case GenderType.male:
      return "男性";
    case GenderType.female:
      return "女性";
    case GenderType.secrecy:
      return "保密";
  }
}

enum GenderType{
  male,
  female,
  secrecy,
}

