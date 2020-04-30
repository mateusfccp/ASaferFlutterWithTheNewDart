import 'dart:math' as math;

void main() {
  // 1. Tentar com um a raiz inválida (negativo)
  // 2. Tentar com um número válido (e.g. 100)

  final double? calculation = niceCalculation(-10);

  final String result = calculation == null
      ? "The calculation failed!"
      : "Calculation: $calculation";
      
  print(result);
}

// Calculation
double? niceCalculation(double n) {
  var calculation = sqrt(n);

  if (calculation == null) {
    return null;
  }

  calculation = log(square(inverse(calculation)));

  if (calculation == null) {
    return null;
  }

  return timesTwo(calculation);
}

// Functions definitions
double? log(double n) =>
    n.isNaN || n.isInfinite || n.isNegative ? null : math.log(n);

double? sqrt(double n) => n.isNaN || n.isNegative ? null : math.sqrt(n);

double timesTwo(double n) => n * 2.0;
double square(double n) => math.pow(n, 2) as double;
double inverse(double n) => n * -1;
