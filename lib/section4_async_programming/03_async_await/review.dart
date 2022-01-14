// ignore_for_file: avoid_print

void main() async {
  // future deals with one value
  // now this line will await then run
  // then the second line and so...
  // not like the example in async_await.dart
  await Future.delayed(const Duration(milliseconds: 1000), () => 2)
      .then((value) => print('value = $value'))
      .catchError((onError) => print('error :: $onError'));

  // this line will run first then the future will run at it's specific time
  // this line will not run first now
  print('value = Future and Stream example');

  // stream deals with multi values
  // stream of data
  final stream = Stream.periodic(const Duration(microseconds: 500), (a) => a);
  // StreamSubscription<int> sub
  final sub = stream.listen((_) => _);
  sub.onData((data) => data > 10 ? sub.cancel() : print(data));

  // instead of future and stream
  // for async programming
  // async and await

  // example on the Future using the await
  try {
    final int value =
        await Future.delayed(const Duration(seconds: 1), () => 20);
    print('await value = $value');
  } catch (onError) {
    print('error :: $onError');
  }

  print('value = await example');

  // example on the Stream using the await
  final streamAwait =
      Stream.periodic(const Duration(microseconds: 500), (i) => i);
  await for (var item in streamAwait) {
    if (item > 10) break;
    print(item);
  }
}
