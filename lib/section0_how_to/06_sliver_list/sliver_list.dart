import 'package:flutter/material.dart';


class ExampleSliverList extends StatefulWidget {
  const ExampleSliverList({Key? key}) : super(key: key);

  @override
  _ExampleSliverListState createState() => _ExampleSliverListState();
}

class _ExampleSliverListState extends State<ExampleSliverList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.amber,
          title: Text('Kindacode.com'),
          expandedHeight: 30,
          collapsedHeight: 150,
        ),
        const SliverAppBar(
          backgroundColor: Colors.green,
          title: Text('Have a nice day'),
          floating: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.all(15),
                child: Container(
                  color: Colors.blue[100 * (index % 9 + 1)],
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    "Item $index",
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              );
            },
            childCount: 1000, // 1000 list items
          ),
        ),
      ],
    ));
  }
}