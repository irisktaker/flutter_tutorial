import 'package:flutter/material.dart';

import 'screen_2.dart';

class Screen1 extends StatelessWidget {
  static const routeName = 'routes_name_screen_1';

  const Screen1({Key? key}) : super(key: key);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(Screen2.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, Object>? routeArguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>?;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Scr 1"),
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
      body: Column(
        children: [
          Text('${routeArguments!['id']}'),
          Text('${routeArguments['title']}'),
          Center(
            child: InkWell(
              onTap: () => selectScreen(context),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                color: Colors.green,
                child: const Text(
                  "Screen 1",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
