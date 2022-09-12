typedef Operation = double Function(double);

main() {
  double r1 = add(3, 4);
  print(r1);

  double r2 = add(3, 4, op: square);
  print(r2);

  double r3 = add(3, 4, op: (double e) => e * e * e);
  print(r3);
}

double add(double a, double b, {Operation? op}) {
  if (op == null) return a + b;
  return op(a) + op(b);
}

double square(double a) {
  return a * a;
}
