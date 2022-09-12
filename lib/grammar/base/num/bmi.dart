
main() {
  double result = bmi(weight: 71, height: 1.80);
  bool normal = result > 18.5 && result < 23.9;
  print(normal);
}

/// 身体质量指数 BMI（Body Mass Index）简称体质指数，
/// 是国际上常用的衡量人体胖瘦程度以及是否健康的一个标准。
//  计算公式为：BMI = 体重÷身高平方。（体重单位：千克；身高单位：米。）

double bmi({
  required double weight,
  required double height,
}) {
  return weight / (height * height);
}
