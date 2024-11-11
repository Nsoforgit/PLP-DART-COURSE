import 'dart:io';
void main() {
  // Define and initialize variables
  int age = 17;
  double height = 5.9;
  String name = 'Alice';
  bool isStudent = true;
  List<String> hobbies = ['reading', 'swimming', 'traveling'];

  // Print the variables
  print('Age: $age');
  print('Height: $height');
  print('Name: $name');
  print('Is Student: $isStudent');
  print('Hobbies: $hobbies');

  // Test the conversion functions
  String strInt = '42';
  String strDouble = '3.14';
  int intValue = 25;

  
    // Function to convert String to int
  int stringToInt(String str) {
    return int.parse(str);
  }

  // Function to convert String to double
  double stringToDouble(String str) {
    return double.parse(str);
  }

  // Function to convert int to String
  String intToString(int value) {
    return value.toString();
  }

  // Function to convert int to double
  double intToDouble(int value) {
    return value.toDouble();
  }


  int convertedInt = stringToInt(strInt);
  double convertedDoubleFromString = stringToDouble(strDouble);
  String convertedStringFromInt = intToString(intValue);
  double convertedDoubleFromInt = intToDouble(intValue);

  print('Converted String to Int: $convertedInt');
  print('Converted String to Double: $convertedDoubleFromString');
  print('Converted Int to String: $convertedStringFromInt');
  print('Converted Int to Double: $convertedDoubleFromInt');


// If-Else Statements for number input
  print("Please enter a number:");
  String? numberInput = stdin.readLineSync();
  if (numberInput != null) {
    try {
      int number = int.parse(numberInput);
      if (number > 0) {
        print('$number is positive.');
      } else if (number < 0) {
        print('$number is negative.');
      } else {
        print('$number is zero.');
      }
    } catch (e) {
      print('Invalid input. Please enter a valid integer.');
    }
  }

  // If-Else Statements for age input
  print("Please enter your age:");
  String? ageInput = stdin.readLineSync();
  if (ageInput != null) {
    try {
      int age = int.parse(ageInput);
      if (age >= 18) {
        print('Eligible to vote.');
      } else {
        print('Not eligible to vote.');
      }
    } catch (e) {
      print('Invalid input. Please enter a valid integer for age.');
    }
  }

  // Switch Case for day input
  print("Please enter a number for the day of the week (1 for Monday, 2 for Tuesday, etc.):");
  String? dayInput = stdin.readLineSync();
  if (dayInput != null) {
    try {
      int day = int.parse(dayInput);
      switch (day) {
        case 1:
          print('Monday');
          break;
        case 2:
          print('Tuesday');
          break;
        case 3:
          print('Wednesday');
          break;
        case 4:
          print('Thursday');
          break;
        case 5:
          print('Friday');
          break;
        case 6:
          print('Saturday');
          break;
        case 7:
          print('Sunday');
          break;
        default:
          print('Invalid day');
      }
    } catch (e) {
      print('Invalid input. Please enter a valid integer for the day.');
    }
  }


  // Loops
  // For loop
  print('Numbers from 1 to 10:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // While loop
  print('Numbers from 10 to 1:');
  int f = 10;
  while (f >= 1) {
    print(f);
    f--;
  }

  // Do-While loop
  print('Numbers from 1 to 5:');
  int p = 1;
  do {
    print(p);
    p++;
  } while (p <= 5);




  // Define a List of int numbers
  List<int> numbers = [3, 7, 12, 45, 102, 8, 23, 99, 150, 5];

  // Iterate through the list
  for (int number in numbers) {
    // Print each number
    print('Number: $number');

    // Check if the number is even or odd
    if (number % 2 == 0) {
      print('$number is even.');
    } else {
      print('$number is odd.');
    }

    // Categorize the number using a switch statement
    switch (number) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        print('$number is small.');
        break;
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
        print('$number is medium.');
        break;
      default:
        print('$number is large.');
    }

    print(''); // Print a blank line for better readability
  }
}

