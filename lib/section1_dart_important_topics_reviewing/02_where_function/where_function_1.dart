///  High order function
///  - Data filtration - تصفة للبيانات
///    We have a group of Data in list sets map or any other data
///    we assign them then we need to analyse or to use these data in any condition

// ignore_for_file: avoid_print, avoid_function_literals_in_foreach_calls

void main(){

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

  /// ----------------------------------

}
