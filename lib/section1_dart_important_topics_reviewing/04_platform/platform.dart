
import 'dart:io';
// ignore_for_file: avoid_print

void main() {
  print(Platform.executable); // dart path
  print(Platform.numberOfProcessors);
  print(Platform.operatingSystem);
  print(Platform.operatingSystemVersion);
  print(Platform.script);
  print(Platform.version);
  print('\n==============================\n');
  print(Platform.isAndroid);
  print(Platform.isIOS);
  Platform.isIOS ? print("Yes IOS") : print("No not IOS");
  // if () {}  we can add a special design for each platform
  print(Platform.isLinux);
  print(Platform.isMacOS);
  print(Platform.isWindows);
  print(Platform.isFuchsia);
  print('\n==============================\n');
  print(Platform.environment); // Map  get environment
  print('\n==============================\n');
  Platform.environment.forEach((key, value) {
    print('Key: $key ::=> Value: $value');
  });
  // another way
  // Platform.environment.forEach((key, _) {
  //   print('$key : ${Platform.environment[key]}');
  // });
}