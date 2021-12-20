import 'package:flutter/material.dart';

import 'screen_1.dart';

class Screen2 extends StatelessWidget {
  static const routeName = 'routes_name_screen_2';

  const Screen2({Key? key}) : super(key: key);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(Screen1.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scr 2"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green.shade100,
        elevation: 10,
        semanticLabel: 'What',
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SizedBox(height: 60),
              const ListTile(
                title: Text(
                  "Hello World",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Nice day",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 40),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 26),
                onTap: () {},
                onLongPress: () {},

                /// note:
                /// static attribute means to reach throw the class name ex: Icons. ..
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text("Username"),
                tileColor: Colors.green.shade200,
                subtitle: const Text("Diamond"),
              ),
              const SizedBox(height: 12),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 26),
                onTap: () {},
                onLongPress: () {},
                leading: const Icon(Icons.email),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text("Email"),
                tileColor: Colors.green.shade200,
                subtitle: const Text("@gmail"),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () => selectScreen(context),
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            color: Colors.red,
            child: const Text(
              "Screen 2",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
