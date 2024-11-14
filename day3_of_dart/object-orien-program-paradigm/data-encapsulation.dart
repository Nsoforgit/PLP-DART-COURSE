// Data Encapsulation: Your Code's Secret Vault! 🔒

// Data encapsulation keeps your class's implementation details safe from users, using an object's functions to control access. This enhances security and promotes cleaner code! 🌟

// 🚀 How to Achieve Encapsulation in Dart 🚀

// Hide Your Secrets: Declare class properties as private by prefixing with an underscore (_). This locks away your valuable data! 📦🔒

// Public Access: Create getter and setter methods to control access to private properties. These methods act as the keys to your vault! 🗝️💼

// 🏷️ Getter and Setter Methods: Your Access Control Team! 🏷️

// Getter Methods: Friendly guides that safely reveal private property values—no risk of meddling! 🎤✨

// Setter Methods: Vigilant bouncers that allow authorized changes to private properties—keeping your vault secure! 💃🎉



class Circle {
  // Private property with underscore (_)
  double _radius;

  // Constructor to initialize the radius
  Circle(this._radius);

  // Getter method to access the private radius
  double get radius => _radius;

  // Setter method to update the radius with validation
  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print('Radius must be greater than 0');
    }
  }

  // Method to calculate area of the circle
  double calculateArea() {
    return 3.1416 * _radius * _radius; // Area = πr²
  }
}

void main() {
  // Creating an instance of Circle
  Circle circle = Circle(5.0);

  // Accessing the radius using getter
  print("Initial radius: ${circle.radius}");

  // Calculating and printing the area
  print("Initial area: ${circle.calculateArea()}");

  // Updating the radius using setter
  circle.radius = 7.0;

  // Accessing updated radius and area
  print("Updated radius: ${circle.radius}");
  print("Updated area: ${circle.calculateArea()}");

  // Trying to set an invalid radius
  circle.radius = -3.0; // This will trigger validation
}