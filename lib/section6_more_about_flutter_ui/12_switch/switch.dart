import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.system,
//       theme: ThemeData(
//         primaryColor: Colors.black,
//         canvasColor: Colors.white,
//       ),
//       darkTheme: ThemeData(
//         primaryColor: Colors.white,
//         canvasColor: Colors.black,
//       ),
//       home: Ex_Switch(),
//     );
//   }
// }

class Ex_Switch extends StatefulWidget {
  Ex_Switch({Key? key}) : super(key: key);

  @override
  State<Ex_Switch> createState() => _Ex_SwitchState();
}

class _Ex_SwitchState extends State<Ex_Switch> {
  bool isSwitch = false;

  ThemeMode controlThemeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: controlThemeMode,
      theme: ThemeData(
        primaryColor: Colors.black,
        canvasColor: Colors.white,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.black,
        colorScheme: ColorScheme.dark(
          primary: Colors.white,
          secondary: Colors.red,
        ),
      ),
      home: Scaffold(
        appBar: backButton(context, text: 'Switch'),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Light"),
              Switch(
                value: isSwitch,
                onChanged: (value) {
                  setState(() {
                    isSwitch = value;

                    isSwitch == false
                        ? controlThemeMode = ThemeMode.light
                        : controlThemeMode = ThemeMode.dark;
                  });
                },
                activeColor: Colors.orange,
                inactiveThumbColor: Colors.red,
              ),
              Text("Dark"),
            ],
          ),
        ),
      ),
    );
  }
}
