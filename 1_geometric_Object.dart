import 'dart:math';

class GeometricObject {

  String color ;
  bool filled;

GeometricObject(): color  = "white" , filled = false ;

GeometricObject.withVal({required this.filled ,  required this.color});

@override
String toString(){
  return 'color is : $color , filled is $filled'  ;
}


}

class Triangle extends GeometricObject{
  double side1, side2 , side3 ;

  Triangle(String childColor, bool childFilled) : side1 = 1 , side2 = 1, side3 = 1, super.withVal(filled: childFilled , color: childColor);

  double getPerimeter(){
    return side3 + side2 +side1 ;
  }

  double getArea(){
    double s = getPerimeter();
    return sqrt(s *(s - side1)* s * (s - side2)* s * (s - side3) );
  }

  @override
  String toString() {
    // TODO: implement toString
    return '${super.toString()}, side1: $side1 , side2: $side2 , side3: $side3';
  }
}

class Rectangle extends GeometricObject{
  double height , width ;

  Rectangle(): height = 1 , width = 1 , super();

  double getPerimeter(){
    return (height + width ) * 2 ;
  }

  double getArea(){
    double s = getPerimeter();
    return (height * width );
  }

  @override
  String toString() {
    // TODO: implement toString
    return '${super.toString()}, width: $width , height : $height';
  }
}


void main() {
  Rectangle rect1 = Rectangle();
  print("Rectangle 1");
  print(rect1);
  print("Area: ${rect1.getArea()}");
  print("Perimeter: ${rect1.getPerimeter()}");

}

