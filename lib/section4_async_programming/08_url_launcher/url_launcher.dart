// ignore_for_file: avoid_print

import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class URLLauncher extends StatefulWidget {
  const URLLauncher({Key? key}) : super(key: key);

  @override
  State<URLLauncher> createState() => _URLLauncherState();
}

class _URLLauncherState extends State<URLLauncher> {
  String str = 'Go to link';

  String url = "https://pub.dev/packages/url_launcher/example";

  String cs50 =
      "https://learning.edx.org/course/course-v1:HarvardX+CS50+X/home";

  String exFalseUrl = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text("Go to link"),
              onPressed: () async {
                await launch(url);
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("Go to link"),
              onPressed: () async {
                await canLaunch(cs50)
                    ? await launch(cs50)
                    : throw 'Could not launch url';
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: Text(str),
              onPressed: () async {
                try {
                  await canLaunch(exFalseUrl)
                      ? await launch(exFalseUrl)
                      : throw 'Could not launch url';
                } catch (e) {
                  print(e.toString());

                  setState(() {
                    str = e.toString();
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
