// ignore_for_file: avoid_print

void main() {
  final s1 = Stream.periodic(const Duration(milliseconds: 500), (a) => a * 2);
  s1.listen(
    (event) => print(event),
    onError: (err) => print(err),
    onDone: () => print('Done'),
    cancelOnError: true,
  );

  // --------------------------------

  final Stream<int> s2 =
      Stream.periodic(const Duration(milliseconds: 500), (i) => i * 3);
  // final sub = s2.listen((event) {
  //   print(event);
  // });
  final sub = s2.listen((_) => _);
  sub.onData((data) {
    data > 10 ? sub.cancel() : print(data);
  });
  sub.onError(
    (error) => print(error),
  );
  sub.onDone(() {
    print('Done');
  });

  // --------------------------------

  final Stream<int> s3 = Stream.periodic(const Duration(seconds: 1), (e) => e);
  final Stream<int> s4 = s3.where((event) => event % 2 == 0);
  s4.listen((event) => print(event));
}
