import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:complete_dev_guide/section4_async_programming/06_stream_in_flutter/stream_in_flutter.dart';
import 'package:flutter/material.dart';

import '05_future_in_flutter/future_in_flutter.dart';
import '07_async_await_in_flutter/async_await_in_flutter.dart';
import '08_url_launcher/url_launcher.dart';
import '09_shared_preferences/shared_preferences.dart';
import '10_sign_up_shared_preferences/sign_up_shared_preferences.dart';

class Section4 extends StatelessWidget {
  const Section4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildBtnWidget({
      required String? text,
      required Widget? widget,
    }) {
      return Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 40,
            child: TextButton(
              child: Text(text!),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) => widget!),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      );
    }

    return Scaffold(
      appBar: backButton(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Center(
            child: Column(
              children: [
                buildBtnWidget(
                    text: 'Future in Flutter', widget: const FutureInFlutter()),
                buildBtnWidget(
                    text: 'Stream in Flutter', widget: const StreamInFlutter()),
                buildBtnWidget(
                    text: 'Async Await In Flutter',
                    widget: const AsyncAwaitInFlutter()),
                buildBtnWidget(
                    text: 'URL Launcher', widget: const URLLauncher()),
                buildBtnWidget(
                    text: 'Shared Preferences',
                    widget: const ESharedPreferences()),
                buildBtnWidget(
                    text: 'SignUp Shared Preferences',
                    widget: const SignUpSharedPreferences()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
