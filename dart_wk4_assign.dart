import 'dart:io';

void main() {
  List<String> userInputResults = [];
  while (true) {
    // Get user input
    print('Enter a string (or type "exit" to quit):');
    String input = stdin.readLineSync()!;
    
    if (input.toLowerCase() == 'exit') {
      break;
    }
    
    // String manipulation
    String reversed = input.split('').reversed.join('');
    String upper = input.toUpperCase();
    String lower = input.toLowerCase();
    int length = input.length;
    
    // Store the results in the list
    String result = 'Original: $input, Reversed: $reversed, Upper: $upper, Lower: $lower, Length: $length';
    userInputResults.add(result);
    
    // Log date and time of entry
    DateTime now = DateTime.now();
    print('Logged on: $now');
    
    // Print results
    print(result);
  }

  // Save results to a file
  try {
    File file = File('user_input_results.txt');
    file.writeAsStringSync('--- User Input Results ---\n', mode: FileMode.write);
    for (var result in userInputResults) {
      file.writeAsStringSync('$result\n', mode: FileMode.append);
    }
    print('Results saved to user_input_results.txt');
  } catch (e) {
    print('An error occurred while saving to file: $e');
  }
}

