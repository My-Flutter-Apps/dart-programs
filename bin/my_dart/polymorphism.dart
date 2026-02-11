class Shape {
  int a = 20;
  double getArea() {
    return 0;
  }
}

class Rectangle extends Shape {
  double width;
  double height;
  int a = 30;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;
  int a = 40;

  Circle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}
