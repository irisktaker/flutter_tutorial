import 'package:flutter/material.dart';

class ExampleLinearGradient extends StatefulWidget {
  const ExampleLinearGradient({Key? key}) : super(key: key);

  @override
  State<ExampleLinearGradient> createState() => _ExampleLinearGradientState();
}

int _selectedIndex = 0;

class _ExampleLinearGradientState extends State<ExampleLinearGradient> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> _linearGradientScreens = [
      customInkGradient(size),
      customContainerGradient(size,
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.4, 0.6, 0.9],
          colors: [Colors.yellow, Colors.red, Colors.indigo, Colors.teal]),
      customContainerGradient(
        size,
        colors: [Colors.green, Colors.blue],
      )
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Gradient'),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          _linearGradientScreens.elementAt(_selectedIndex),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.style), label: 'style'),
          BottomNavigationBarItem(icon: Icon(Icons.style), label: 'style'),
          BottomNavigationBarItem(icon: Icon(Icons.style), label: 'style'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Container customContainerGradient(
    Size size, {
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    List<double>? stops,
    required List<Color> colors,
  }) {
    return Container(
      width: size.width,
      height: size.height - 112,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          stops: stops,
          colors: colors,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello Gradient!',
          style: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Ink customInkGradient(Size size) {
    return Ink(
      width: size.width,
      height: size.height - 112,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.red,
          ],
        ),
      ),
      child: const Center(
        child: Text(
          'Hello Gradient!',
          style: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
