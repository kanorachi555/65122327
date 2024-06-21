import 'dart:math';
void main() {
  double side1 = 3.0;
  double side2 = 4.0;
  double side3 = 5.0;

  double area = calculateTriangleArea(side1, side2, side3);
  
  print('Area of the triangle with sides $side1, $side2, $side3 is: $area');
}

double calculateTriangleArea(double sideA, double sideB, double sideC) {
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    return double.nan;
  }
  
  if ((sideA + sideB <= sideC) || (sideA + sideC <= sideB) || (sideB + sideC <= sideA)) {
    return double.nan; 
  }
  
  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC));
  return area;
}
