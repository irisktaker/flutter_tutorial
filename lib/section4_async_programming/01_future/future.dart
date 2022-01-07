// ignore_for_file: avoid_print, unused_local_variable

// async => asynchronous codes
void main() {
  // -----------------------
  final f1 = Future(() {
    print('Future value ${2}');
  });

  // -----------------------
  // here we pointing to the function (info) not calling the function (info())
  final f2 = Future(info);

  // -----------------------
  // if we need to add the type
  final Future<double> f3 = Future(info2);
  final Future f4 = Future(info2).then((value) => print(value));

  // -----------------------
  // with catchError
  final Future f5 = Future(info2)
      .then((value) => print(value))
      .catchError((error) => print(error));
  final Future f6 = Future(info3)
      .then((value) => print(value))
      .catchError((error) => print('error $error'));

  // -----------------------
  // if im sure what is the value will be return i can use
  final f7 = Future.value(10.0);
  f7.then((value) => print('f7 value = $value'));

  // -----------------------
  final f8 = Future.delayed(
      const Duration(seconds: 1), () => print('print after one second'));

  // -----------------------
  print('this will print first then the Future value will print later ${1}');
}

void info() {
  print('Pointing function in Future constructor');
}

double info2() {
  return 2.0;
}

double info3() {
  // return double.parse('56');
  return double.parse('56ff');
}
