// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  print("Enter your Birth year?");
  var birthYear = stdin.readLineSync();
  // date | time . now | only year
  int age = DateTime.now().year - int.parse(birthYear!);
  print("Your age is $age years old");
}

class AgeCalc {
  static int? age;
  AgeCalc(int birth) {
    print("Enter your Birth year?");
    // var birthYear = stdin.readLineSync();
    var birthYear = birth;
    // date | time . now | only year
    age = DateTime.now().year - birthYear;
    print("Your age is $age years old");
  }
}
