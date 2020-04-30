import 'dart:math' as math;

import 'package:dartz/dartz.dart';

void main() {
  final Option<double> calculation = niceCalculation(-10);

  final String result = calculation.fold(
    () => "The calculation failed!",
    (c) => "Calculation: $c",
  );

  print(result);
}

// Calculation
Option<double> niceCalculation(double n) =>
    sqrt(n).map(inverse)
           .map(square)
           .bind(log)
           .map(timesTwo);

// Functions definitions
Option<double> log(double n) =>
    n.isNaN || n.isInfinite || n.isNegative ? const None() : Some(math.log(n));

Option<double> sqrt(double n) =>
    n.isNaN || n.isNegative ? const None() : Some(math.sqrt(n));

double timesTwo(double n) => n * 2.0;
double square(double n) => math.pow(n, 2) as double;
double inverse(double n) => n * -1;
