import 'package:flutter/material.dart';

class EDrawer extends StatelessWidget {
  const EDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text('Drawer'),
      ),
      body: Column(),
    );
  }
}
