///  High order function
///  - Data filtration - تصفة للبيانات
///    We have a group of Data in list sets map or any other data
///    we assign them then we need to analyse or to use these data in any condition

// ignore_for_file: avoid_print, avoid_function_literals_in_foreach_calls

void main(){
  /// ############################ -- PART ONE -- ############################

  print(
      '\n############################ -- PART ONE -- ############################\n'
  );

  /// ----------------------------------

  print("\nwhole list:");
  var a1 = [1, 2.5, 2.3, 28, 200, 88];
  print(a1);

  /// ----------------------------------

  print("\nwhere:");
  // .high order function -> a function use another function as parameter assign to it
  // return boolean
  var b1 = a1.where((element) => false);
  print(b1);
  // the elements means each data in the a1 list one by one
  b1 = a1.where((element) => true);
  print(b1);
  b1 = a1.where((element) => element < 28);
  print(b1);
  b1 = a1.where((element) => element % 2 == 0);
  print(b1);
  b1 = a1.where((element) => element % 2 != 0);
  print(b1);

  /// ----------------------------------

  print("\nlastWhere:");
  // first item(element) is achieve the condition
  var b2 = a1.firstWhere((element) => element == 200);
  print(b2);

  /// ----------------------------------

  print("\nlastWhere:");
  // last item(element) is achieve the condition
  var b3 = a1.lastWhere((element) => element < 4);
  print(b3);

  /// ----------------------------------

  print("\nforEach:");
  // forEach -> used for more than on item(element)
  a1.forEach((element) {
    print(element);
  });
  print('\n------\nforEach dose not equal to 200');
  a1.forEach((element) {
    if(element != 200){
      print(element);
    }
  });

  print(a1[4] == a1[4]);

  /// ----------------------------------

  print("\nindexWhere:");
  // first index where
  var b4 = a1.indexWhere((element) => element % 2 == 0);
  print(b4);
  // int indexWhere(bool test(E element), [int start = 0]);
  b4 = a1.indexWhere((element) => element % 2 == 0, 4);
  print(b4);

  /// ----------------------------------

  print("\nlastIndexWhere:");
  // last index where
  var b5 = a1.lastIndexWhere((element) => element % 2 == 0);
  print(b5);

  /// ----------------------------------

  print("\nwhereType:");
  // whereType
  var c1 = a1.whereType<double>();
  print(c1);

  /// ############################ -- PART TWO -- ############################

  print(
    '\n############################ -- PART TWO -- ############################\n'
  );

  print("\nwhole list:");
  var a2 = [1, 2.5, 2.3, 28, 200, 88];
  print(a2);
  a2.removeWhere((element) => element % 2 == 0);
  print(a2);

  print("\na3: retainWhere");
  var a3 = [1, 2.5, 2.3, 28, 200, 88];
  a3.retainWhere((element) => element % 2 == 0);
  print(a3);

  print("\na1: retainWhere");
  a1.retainWhere((element) => element % 2 == 0);
  print(a1);

  print("\nsingleWhere");
  // If exactly one element satisfies test, that element is returned.
  // If more than one matching element is found, throws StateError
  // a1.singleWhere((element) => element % 2 == 0); coz Too many elements
  // a1.removeAt(0);
  a1.removeRange(0, 2);
  a1.singleWhere((element) => element % 2 == 0);
  print(a1);

  print("\nusing try and catch");
  // using try and catch
  Object e;
  try {
    e =  a3.singleWhere((item) => item % 2 == 0);
  } catch(_) {
    e = 'error, too many values (two or more) have a even numbers';
  }
  print(e);

  /// E firstWhere(bool test(E element), {E orElse()?}) {
  ///   for (E element in this) {
  ///     if (test(element)) return element;
  ///   }
  ///   if (orElse != null) return orElse();
  ///   throw IterableElementError.noElement();
  /// }

  print("\norElse: ()=>");
  // orElse: ()=>  --> we can use it for other functions
  var a4 = [1, 2.5, 2.3, 28, 200, 88];
  a4.removeWhere((element) => element % 2 == 0);
  // click on the firstWhere to see the original code
  // let's use orElse: () =>  | to handel the error
  var o = a4.firstWhere((e) => e % 2 == 0, orElse: () => 0);
  print(o);
}
