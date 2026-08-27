abstract class Shape {
  double calculateArea();

  void describe() {
    print("This is a shape.");
  }

}

class Circle extends Shape {

  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.1416 * radius * radius;
  }

  @override
  void describe() {
    print("This is a circle.");
  }
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
 @override
  void describe() {
    print("This is a rectangle.");
  }
}

void main(){

  Shape circle = Circle(5);
  final rectangle = Rectangle(4, 6);

  double areaCircle = circle.calculateArea();
  print("Area of Circle: $areaCircle");
  print("Area of Rectangle: ${rectangle.calculateArea()}");
}