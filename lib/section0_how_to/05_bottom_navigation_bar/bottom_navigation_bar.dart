import 'package:flutter/material.dart';

import '../back_button.dart';

class ExampleOnBottomNavBar extends StatefulWidget {
  const ExampleOnBottomNavBar({Key? key}) : super(key: key);

  @override
  State<ExampleOnBottomNavBar> createState() => _ExampleOnBottomNavBarState();
}

int _selectedIndex = 0;

class _ExampleOnBottomNavBarState extends State<ExampleOnBottomNavBar> {
  static const List<Widget> _pages = [
    CallPage(),
    Icon(
      Icons.call,
      size: 150,
      color: Colors.grey,
    ),
    Icon(
      Icons.camera,
      size: 150,
      color: Colors.grey,
    ),
    Icon(
      Icons.chat,
      size: 150,
      color: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: backButton(context, text: 'Bottom Navigation Bar'),
      body: Center(
        child:
            // _pages.elementAt(_selectedIndex),
            IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
      ),

      /// ..------------------
      ///
      ///
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTappedIndex,
        backgroundColor: Colors.white10,
        elevation: 0,
        iconSize: 40,
        showSelectedLabels: true, // un hide label
        showUnselectedLabels: false, // hide label
        type: BottomNavigationBarType.shifting,

        mouseCursor: SystemMouseCursors.grab, // many shapes
        selectedFontSize: 20,
        selectedIconTheme:
            const IconThemeData(color: Colors.amberAccent, size: 40),
        selectedItemColor: Colors.amberAccent,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme:
            const IconThemeData(color: Colors.deepOrangeAccent),
        unselectedItemColor: Colors.deepOrangeAccent,
      ),
    );
  }

  void _onTappedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // to hide the leading
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Incoming',
                  ),
                  Tab(
                    text: 'Outgoing',
                  ),
                  Tab(
                    text: 'Missed',
                  ),
                ],
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            IncomingPage(),
            OutgoingPage(),
            MissedPage(),
          ],
        ),
      ),
    );
  }
}

class IncomingPage extends StatelessWidget {
  const IncomingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.call_received,
        size: 200,
      ),
    );
  }
}

class OutgoingPage extends StatelessWidget {
  const OutgoingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      child: Scaffold(
        body: Center(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Call ${index + 1}'),
                );
              }),
        ),
      ),
    );
  }
}

class MissedPage extends StatelessWidget {
  const MissedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
