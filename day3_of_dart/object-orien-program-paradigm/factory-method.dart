// FACTORY METHODS

// Welcome to the Factory of Fun in Dart! 🎉 Factory constructors are like wizards for creating class instances, offering alternative ways to conjure objects. Need a specific type or subclass? No problem—just like a secret menu at your favorite eatery! 🍔✨

// Here’s the scoop: factory constructors do use the return keyword to serve up your creations! 🛎️ But remember, you can’t refer to this inside a factory—think of it as a playful twist in the rules! 🤷‍♂️

// So dive into the factory methods of Dart, where object creation is an enchanting experience! 🏭✨ Let your coding magic shine! 🎩🚀





import 'dart:math'; // Import math library to use pi

// Circle Class Definition
class Circle {
  double radius; // Instance variable to store the radius of the circle

  // Constructor to initialize the radius
  Circle(this.radius);

  // Factory constructor to control instance creation
  factory Circle.create(double radius) {
    // Ensure the radius is positive before creating the instance
    if (radius > 0) {
      return Circle(radius); // Return a new Circle instance
    } else {
      // Throw an error if the radius is not valid
      throw ArgumentError('Radius must be greater than zero');
    }
  }

  // Method to calculate the area of the circle
  double calculateArea() {
    return pi * radius * radius; // Area formula: pi * radius^2
  }
}

void main() {
  // Using the factory constructor to create circle instances
  Circle circle1 = Circle.create(5.0); // Create a circle with radius 5.0
  Circle circle2 = Circle.create(10.0); // Create a circle with radius 10.0

  // Print the area of the circles by calling the calculateArea method
  print('Circle 1 Area: ${circle1.calculateArea()}'); // Output: Circle 1 Area
  print('Circle 2 Area: ${circle2.calculateArea()}'); // Output: Circle 2 Area

  // Example of error handling for invalid radius
  // try {
  //   Circle circle3 = Circle.create(-3.0); // Invalid radius, will throw an error
    
  // } catch (e) {
    
  //   print(e); // Catch and print the error message
  // }
}