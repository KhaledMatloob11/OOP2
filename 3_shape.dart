abstract class Shape {
  String color;

  Shape(this.color);

  double getArea();

  @override
  String toString();
}

class Rectangle extends Shape {
  int length;
  int width;

  Rectangle(this.length, this.width, super.color);

  @override
  double getArea() {
    return (length * width).toDouble();
  }

  @override
  String toString() { // تصحيح اسم الدالة
    return 'Rectangle with width = $width, with length = $length, color = $color';
  }
}

class Triangle extends Shape {
  int base;
  int height;

  Triangle(this.base, this.height, super.color);

  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  String toString() {
    return 'Triangle with base = $base, with height = $height, color = $color';
  }
}

void main() {
/// Rectangle
 Rectangle rect = Rectangle(5, 4, "Red");
  print(rect);
  print("Area: ${rect.getArea()}");

  print("=====================================================");

/// Triangle
  Triangle tri = Triangle(6, 3, "Blue");
  print(tri);
  print("Area: ${tri.getArea()}");
}