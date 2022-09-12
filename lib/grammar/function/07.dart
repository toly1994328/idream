typedef Operation = double Function(double);

main() {
  Operation op = square;
  print(op(10));
  print(op.call(10));
  op = cube;
  print(op(10));
}

double square(double a) {
  return a * a;
}

double cube(double a) => a * a * a;
