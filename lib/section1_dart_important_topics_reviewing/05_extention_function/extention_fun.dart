// ignore_for_file: avoid_print

void main() {
  print(int.parse('2') + 5);
  '2'.parseInt();

  // used for outer files
  print(NumberParsing('2').parseInt() + 8);
}

// extension function
extension NumberParsing on String {
  parseInt(){
    return int.parse(this);
  }
}