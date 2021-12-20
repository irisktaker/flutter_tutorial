import 'package:flutter/material.dart';

class EGridView extends StatelessWidget {
  const EGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
        elevation: 10,
      ),
      body: Container(
        color: Colors.teal,
        padding: const EdgeInsets.all(20),
        child: GridView(
          children: [
            buildContainer(title: '1', color: Colors.cyan),
            buildContainer(title: '2', color: Colors.purpleAccent),
            buildContainer(title: '3', color: Colors.orangeAccent),
            buildContainer(title: '4', color: Colors.green),
            buildContainer(title: '5', color: Colors.brown),
            buildContainer(title: '6', color: Colors.blueAccent),
            buildContainer(title: '1', color: Colors.cyan),
            buildContainer(title: '2', color: Colors.purpleAccent),
            buildContainer(title: '3', color: Colors.orangeAccent),
            buildContainer(title: '4', color: Colors.green),
            buildContainer(title: '5', color: Colors.brown),
            buildContainer(title: '6', color: Colors.blueAccent),
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: size.width * 0.5,
            childAspectRatio: 3 / 2, // == 0.75
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            mainAxisExtent: 190,
          ),
        ),
      ),
    );
  }

  Container buildContainer({required String? title, required Color? color}) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: color,
        gradient: LinearGradient(
          colors: [
            color!,
            Colors.deepOrange,
            Colors.deepPurple,
            Colors.black.withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title!,
        // textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
