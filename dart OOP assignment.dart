import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a base class
class LivingThing {
  void breathe() {
    print('Breathing...');
  }
}

// Define a subclass that implements an interface and overrides a method
class Dog extends LivingThing implements Animal {
  String name;
  
  Dog(this.name);
  
  @override
  void makeSound() {
    print('$name barks: Woof! Woof!');
  }
}

// Define a class with a method to read data from a file
class FileReader {
  String fileName;
  
  FileReader(this.fileName);
  
  List<String> readLinesFromFile() {
    List<String> lines = [];
    try {
      File file = File(fileName);
      lines = file.readAsLinesSync();
    } catch (e) {
      print('Error reading file: $e');
    }
    return lines;
  }
}

void main() {
  // Create an instance of Dog class
  Dog myDog = Dog('Buddy');
  
  // Demonstrate inheritance and interface implementation
  myDog.breathe();
  myDog.makeSound();
  
  // Create an instance of FileReader class
  FileReader fileReader = FileReader('data.txt');
  
  // Demonstrate reading data from a file
  List<String> lines = fileReader.readLinesFromFile();
  print('Data read from file:');
  lines.forEach((line) => print(line));
  
  // Demonstrate the use of a loop
  print('Counting to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}
