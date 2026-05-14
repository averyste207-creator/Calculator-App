import 'dart:math';

class Math {
  Function quadraticFormula = (double a, double b, double c) {
    var discriminant = pow(b, 2) - 4 * a * c;
    var negativeB = b*-1;
    var twoA = 2*a;
    var sqrtDiscriminant = sqrt(discriminant);
    var root1 = (negativeB + sqrtDiscriminant) / twoA;
    var root2 = (negativeB - sqrtDiscriminant) / twoA;
    return [double.parse(root1.toStringAsFixed(2)), double.parse(root2.toStringAsFixed(2))];
  };

  Function add = (double num1, double num2) {
    double result = num1 + num2;
    return double.parse(result.toStringAsFixed(2));
  };

  Function subtract = (double num1, double num2) {
    double result = num1 - num2;
    return double.parse(result.toStringAsFixed(2));
  };

  Function multiply = (double num1, double num2) {
    double result = num1 * num2;
    return double.parse(result.toStringAsFixed(2));  
  };
  Function divide = (double num1, double num2) {
    double result = num1 / num2;
    return double.parse(result.toStringAsFixed(2));
  }; 
  Function power = (double num1, double num2) {
    double result = double.parse(pow(num1, num2).toString());
    return double.parse(result.toStringAsFixed(2));
  };
  Function root = (double num1, double num2) {
    double result = double.parse(pow(num1, 1/num2).toString());
    return double.parse(result.toStringAsFixed(2));
  };
}