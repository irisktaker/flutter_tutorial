// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class MakingScrollableTabsWithTabBar extends StatefulWidget {
  const MakingScrollableTabsWithTabBar({Key? key}) : super(key: key);

  @override
  State<MakingScrollableTabsWithTabBar> createState() =>
      _MakingScrollableTabsWithTabBarState();
}

class _MakingScrollableTabsWithTabBarState
    extends State<MakingScrollableTabsWithTabBar> {
  TabController? _controller;

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    // _controller = TabController(length: 5, vsync: this);

    _controller!.addListener(() {
      setState(() {
        _selectedIndex = _controller!.index;
      });
      print("Selected Index: " + _controller!.index.toString());
    });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrollable) {
            return [
              SliverAppBar(
                title: const Text("Scrollable TabBar"),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  controller: _controller,
                  isScrollable: true,
                  tabs: const [
                    Tab(text: 'Flight'),
                    Tab(text: 'Train'),
                    Tab(text: 'Car'),
                    Tab(text: 'Cycle'),
                    Tab(text: 'Boat'),
                  ],
                ),
              ),
            ];
          },
          body: Center(
            child: TabBarView(
              controller: _controller,
              children: const [
                Icon(Icons.flight, size: 350),
                Icon(Icons.train, size: 350),
                Icon(Icons.directions_car, size: 350),
                Icon(Icons.directions_bike, size: 350),
                Icon(Icons.directions_boat, size: 350),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
