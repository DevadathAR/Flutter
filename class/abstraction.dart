abstract class Shape {
  void draw();
  void move() {
    print("Moving the shape.");
  }
}

class Circle extends Shape {
  void draw() {
    print("Drawing a circle.");
  }
}

void main() {
  Circle circle = Circle();
  circle.draw();
  circle.move();
}
