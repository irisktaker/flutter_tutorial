import 'package:flutter/material.dart';

class ETapBar extends StatelessWidget {
  const ETapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawerScrimColor: Colors.green.shade50.withOpacity(0.8),
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
        appBar: AppBar(
          elevation: 10,
          title: const Text('Tap Bar'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category), text: 'Category'),
              Tab(icon: Icon(Icons.star), text: 'Star'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Screen1(),
            // Screen2(),
            Scaffold(
              body: Center(
                child: Text("Hello form scaffold *screen #1"),
              ),
            ),
            Scaffold(
              body: Center(
                child: Text("Hello form scaffold *screen #2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
