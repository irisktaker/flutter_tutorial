import 'package:flutter/material.dart';

class ETabBar extends StatelessWidget {
  const ETabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: const TabBar(
            indicatorColor: Colors.amberAccent,
            indicatorSize: TabBarIndicatorSize.tab, // label
            indicatorWeight: 4,
            // indicator: BoxDecoration(
            //   // ex to add image
            //   // image: const DecorationImage(
            //   //     image: AssetImage('assets/images/placeholder.png'),
            //   //     fit: BoxFit.fitWidth),
            //   borderRadius: BorderRadius.circular(50),
            //   color: Colors.greenAccent,
            // ),
            // indicator: CustomDecoration(12.0),

            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
            ],
          ),
          title: const Text("Tab Bar Demo"),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
