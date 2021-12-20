// ignore_for_file: avoid_print, unused_local_variable, avoid_function_literals_in_foreach_calls, avoid_init_to_null, unnecessary_cast

/// Iterable:
/// Object Contains Data That Can Be Iterated Upon
/// Examples (String, List, Set, Map)
/// Iterable object

void main() {
  /// we can use the word Iterable instead of List, Set, Map
  /// List, Set, Map are from type Iterable

  // abstract class EfficientLengthIterable<T> extends Iterable<T> {}
  // abstract class List<E> implements EfficientLengthIterable<E> {}
  List list = [1, 2.3, 8.4, 90, 100];
  List twoDList = [
    [1, 2.5, 3],
    [8.3, 77, 2.1],
  ];
  Set set = {1, 3, 4, 8, 9};
  Map map = {1: 'a', 2: 'b', 3: 'c', 4: 'd'};

  print("\n------- for in loop -------\n");
  print('');
  for (var item in list) {
    print(item);
  }
  print('');
  for (var i in twoDList) {
    print(i);
  }
  print('');
  for (var element in set) {
    print(element);
  }
  // print('');
  // for(var e in map as Iterable) {
  //   print(e);
  // }

  // note:
  // int is not iterable and it have only one value not many
  // var x = 8;
  // for(var item in x) { //The type 'int' used in the 'for' loop must implement Iterable.
  //   print(x);
  // }

  print("\n###############################################################\n");
  // --------------------
  /// ###############################################################
  // --------------------

  Iterable<int> i1 = [1, 2, 8, 90, 100];
  Iterable<dynamic> i2 = [
    [1, 2.5, 3],
    [8.3, 77, 2.1],
  ];
  Iterable<int> i3 = {1, 3, 4, 8, 9};
  // Iterable<int, String> i4 = {1: 'a', 2: 'b', 3: 'c', 4: 'd'} ;
  // Map<int, String> i4 = {1: 'a', 2: 'b', 3: 'c', 4: 'd'} ;
  // Iterable<dynamic> i4 = {1: 'a', 2: 'b', 3: 'c', 4: 'd'} as Iterable ;

  print('forEach element in Iterable i1');
  i1.forEach((element) {
    print(element);
  });

  print('');
  print('Change i1 to list and assign it to a new List');
  List<int> l1 = i1.toList();
  print(l1);

  print("\n###############################################################\n");
  // --------------------
  /// ###############################################################
  // --------------------

  print('Spread Operator (...)\n');
  // ... -> Spread Operator
  var list1 = [1, 2, 3];
  var list2 = [
    0,
    ...list1,
    ...[3, 3]
  ];
  print(list2);

  var list3 = [
    0,
    ...list1, // this will print the items in the list (one list)
    [3, 3],
    list1, // it will print the list as it is (list in list)
  ];
  print(list3);

  var list4 = null;
  var list5 = [
    0,
    ...list1,
    [3, 3],
    ...?list4, // check if null ...?
  ];
  print(list5);

  // ----------------

  print('\nUsing if statement in Iterable');
  print("list1.length = ${list1.length}");
  var list6 = [
    8, 3, 2,
    if(list1.length == 3) ...list1,
    ...list5,
    ...[7,8],
    [99,32],
  ];
  print(list6);

  print("\n###############################################################\n");
  // --------------------
  /// ###############################################################
  // --------------------

  List a1 = [1, 2.5, 2.3, 28, 200, 88];
  // any returns boolean (true or false)
  a1.any((element) => element % 2 == 0);
  print(a1); // as List []

  num sum = 0;
  // var | Iterable
  Iterable result = a1.map((e) {
    sum += e;
    return e;
  });
  print(result); // as Iterable ()
  print(sum);
  print(result.toList()); // as List []
  print(sum);

  print('\n.toList()');

  num sum2 = 0;
  // var | Iterable
  List result2 = a1.map((e) {
    sum2 += e;
    return e;
  }).toList(); // we change it to list
  print(result2); // as List []
  print(sum2);

  print('\n(.. as List<>).map()');
  num sum3 = 0;
  // var | Iterable
  List result3 = (a1 as List<dynamic>).map((e) {
    sum3 += e;
    return e;
  }).toList(); // we change it to list
  print(result3); // as List []
  print(sum3);

  print('\nList in List [[]]');
  // var arr = [[1,2,3]];
  // List of List of int
  List<List<int>> arr = [[1,2,3]];
  var sum4 = 0.0;
  var result4 = arr[0].map((e) {
    sum4 += e;
    return e;
  });
  print(result4);
  print(sum4);
}
