//  Inheritance: The Family Tree of Code! 🌳

// Inheritance is like inheriting your favorite traits from family members—only in the world of OOP! 🎉 It’s the magical process that lets one object inherit properties and behaviors from another.

// 🦸‍♂️ Why Inherit?

// Imagine you're a SuperDog 🐕‍🦸‍♂️ with all the cool features of a regular Dog 🐶 but with some superpowers thrown in! Inheritance allows you to:

// Reuse Code: Save time and energy by building on existing properties instead of starting from scratch! ⏳💡

// Create a Hierarchy: Build a family tree of classes, where child classes can share the awesome traits of parent classes! 📜🌟 




// Base class (Superclass)
class Vehicle {
  String brand;
  int year;

  // Constructor for Vehicle
  Vehicle(this.brand, this.year);

  // Method to display vehicle info
  void displayInfo() {
    print("Brand: $brand");
    print("Year: $year");
  }
}

// Derived class (Subclass) inheriting from Vehicle
class Car extends Vehicle {
  String model;

  // Constructor for Car which uses super to call the base class constructor
  Car(String brand, int year, this.model) : super(brand, year);

  // Method to display car-specific info
  void displayCarInfo() {
    displayInfo(); // Call the base class method
    print("Model: $model");
  }
}

void main() {
  // Creating an instance of the Car class
  Car car = Car('Toyota', 2021, 'Corolla');

  // Accessing methods from both base and derived classes
  car.displayCarInfo();
}