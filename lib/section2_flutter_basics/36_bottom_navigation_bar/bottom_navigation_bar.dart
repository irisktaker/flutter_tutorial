import 'package:flutter/material.dart';

class EBottomNavigationBar extends StatefulWidget {
  const EBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<EBottomNavigationBar> createState() => _EBottomNavigationBarState();
}

class _EBottomNavigationBarState extends State<EBottomNavigationBar> {
  final List<Map<String, dynamic>>? _pages = const [
    {
      'page': Scaffold(
        body: Center(
          child: Text("Hello form scaffold *screen #1"),
        ),
      ),
      'title': "Page 1",
    },
    {
      'page': Scaffold(
        body: Center(
          child: Text("Hello form scaffold *screen #2"),
        ),
      ),
      'title': "Page 2",
    },
    {
      'page': Scaffold(
        body: Center(
          child: Text("Hello form scaffold *screen #3"),
        ),
      ),
      'title': "Page 3",
    },
  ];

  int _selectedPageIndex = 0;

  void _x1(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

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
        elevation: 10,
        title: Text(_pages![_selectedPageIndex]['title']),
      ),
      body: _pages![_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber.shade100,
        currentIndex: _selectedPageIndex,
        elevation: 10,
        iconSize: 24.0,
        selectedItemColor: Colors.pink,
        onTap: _x1,
        items: const [
          // items have automatic index
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Star'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard), label: 'Wallet'),
        ],
      ),
    );
  }
}
