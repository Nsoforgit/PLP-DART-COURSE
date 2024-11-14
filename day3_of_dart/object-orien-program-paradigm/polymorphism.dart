//  Polymorphism: The Chameleon of OOP! 🎨

// Welcome to the world of Polymorphism, where one method can wear many hats! 🎩✨ Think of it as a party where all your favorite classes gather, and each one brings their own unique twist to the same method name!

// 🔄 Why Polymorphism Rocks:

// One Method, Many Forms: Just like a chameleon changes color, polymorphism allows different classes to redefine a method while keeping the same name! 🦎

// Flexibility Galore: This ability gives you the power to call the same method on different objects and get results that match their unique behaviors! It’s like having a universal remote for your code! 📺 



// Base class
class Animal {
  // Method to be overridden by derived classes
  void makeSound() {
    print("Animal makes a sound");
  }
}

// Derived class Dog that overrides makeSound method
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

// Derived class Cat that overrides makeSound method
class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

void main() {
  // Creating instances of Animal, Dog, and Cat
  Animal animal = Animal();
  Dog dog = Dog();
  Cat cat = Cat();

  // Calling makeSound method for each instance
  animal.makeSound(); // Calls Animal's version
  dog.makeSound();    // Calls Dog's version
  cat.makeSound();    // Calls Cat's version
}