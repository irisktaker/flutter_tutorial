import 'package:flutter/material.dart';

import 'search.dart';

class SearchBar extends StatefulWidget {
  final List<String> _list = List.generate(10, (index) => "Text # $index");

  @override
  _SearchBarState createState() => _SearchBarState();
}

/// What we need?
/// One StatefulWidget
/// One Scaffold
/// One AppBar
/// Data To Be Searched

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: Search(widget._list),
              );
            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        centerTitle: true,
        title: Text("Search Bar"),
      ),
      body: ListView.builder(
          itemCount: widget._list.length,
          itemBuilder: (context, index) {
            return Text(
              widget._list[index],
            );
          }),
    );
  }
}
