import 'package:flutter/material.dart';

void main() {
  // requires void runApp(Widget app)  -- Widget
  runApp(const WidgetTree());
}

// MyApp class needs to extends A Widget
// polymorphism ->> MyApp extends from StatelessWidget so
// -> MyApp types MyApp and StatelessWidget and Widget
// class MyApp extends Widget{}
class WidgetTree extends StatelessWidget {
  // #2
  // Use key in widget constructors
  const WidgetTree({Key? key}) : super(key: key);

  // #1
  // Missing concrete implementation of 'StatelessWidget.build'.
  // Try implementing the missing method, or make the class abstract.
  @override
  Widget build(BuildContext context) {
    // Try adding either a return or a throw statement at the end.
    // Widget type method needs to return type of Widget
    return MaterialApp(
      home: Scaffold(
        // the whole screen of the app
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('AppBar Title'),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Body Text #1'),
              Text('Body Text #2'),
              Text('Body Text #3'),
              Text('Body Text #4'),
            ],
          ),
        ),
      ),
    );
  }
}
