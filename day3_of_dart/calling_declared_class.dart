// Declaring a simple class in Dart

class Car {

 String brand;

 String model;




 Car(this.brand, this.model);




 void showDetails() {

  print('Brand: $brand, Model: $model');

 }

}




void main() {

 // Creating an object of the Car class

 Car myCar = Car('Toyota', 'Corolla');

  

 // Calling the method using the object

 myCar.showDetails(); // Output: Brand: Toyota, Model: Corolla

}