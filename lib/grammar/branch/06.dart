

enum LengthUnit { m, cm, dm }

double bmi({
  required double weight,
  required double height,
  LengthUnit lengthUnit = LengthUnit.m
}) {
  switch(lengthUnit){
    case LengthUnit.m:
      break;
    case LengthUnit.cm:
      height = height/100;
      break;
    case LengthUnit.dm:
      height = height/10;
      break;
  }
  return weight / height * height;
}
