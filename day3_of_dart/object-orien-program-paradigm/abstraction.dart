// Abstraction: Simplifying Complexity! 🎉

// Abstraction is like a magic lens that lets users interact only with the essential features of an object, while keeping the intricate details hidden away. It’s all about making the complicated simple! 🪄✨

// 🧐 What is Abstraction?

// User-Friendly Interaction: Imagine you're using a remote control. You don’t need to know how the remote works internally; you just press buttons to change channels or adjust the volume. That’s the essence of abstraction! It allows users to access just a subset of an object’s characteristics and operations, simplifying their experience. 📺🔧

// Simplicity Reveals Complexity: Abstraction takes complex systems and presents them in a straightforward manner. Think of it as showing only the tip of the iceberg while the vast majority lies beneath the surface!







// Code example

// Abstract class Shape
abstract class Shape {
  // Abstract method (no implementation)
  double calculateArea();

  // Concrete method (with implementation)
  void printInfo() {
    print("This is a shape.");
  }
}

// Concrete class Circle extends Shape
class Circle extends Shape {
  double radius;

  // Constructor for Circle
  Circle(this.radius);

  // Override the abstract method to provide specific implementation
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Concrete class Rectangle extends Shape
class Rectangle extends Shape {
  double width;
  double height;

  // Constructor for Rectangle
  Rectangle(this.width, this.height);

  // Override the abstract method to provide specific implementation
  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  // Create instances of Circle and Rectangle
  Circle circle = Circle(5.0);
  Rectangle rectangle = Rectangle(10.0, 20.0);

  // Using the common interface provided by the Shape abstract class
  circle.printInfo();  // Calls the concrete method in the abstract class
  print("Circle Area: ${circle.calculateArea()}");

  rectangle.printInfo();  // Calls the concrete method in the abstract class
  print("Rectangle Area: ${rectangle.calculateArea()}");
}
