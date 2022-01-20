import 'package:complete_dev_guide/section4_async_programming/10_sign_up_shared_preferences/sign_up_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences _pref = await SharedPreferences.getInstance();

  String? email = _pref.getString('e');
  String? password = _pref.getString('p');

  runApp(
    email != null && password != null
        ? const HomePageEx()
        : const SignUpSharedPreferences(),
  );
}

class HomePageEx extends StatelessWidget {
  const HomePageEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page Ex"),
      ),
      body: const Center(
        child: Text("Home Page Ex"),
      ),
    );
  }
}
