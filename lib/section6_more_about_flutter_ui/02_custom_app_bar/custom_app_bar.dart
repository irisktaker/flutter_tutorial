import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Row(
      //     children: [
      //       Expanded(
      //         child: IconButton(
      //           icon: Icon(
      //             Icons.arrow_back,
      //           ),
      //           onPressed: () => Navigator.pop(context),
      //         ),
      //       ),
      //       const SizedBox(width: 10),
      //       Expanded(
      //         child: IconButton(
      //           icon: Icon(
      //             Icons.accessibility_new,
      //           ),
      //           onPressed: () {},
      //         ),
      //       ),
      //     ],
      //   ),
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         colors: [
      //           Colors.black.withOpacity(0.7),
      //           Colors.deepPurple,
      //           Colors.pinkAccent,
      //           Colors.yellowAccent.shade200,
      //         ],
      //       ),
      //     ),
      //   ),
      //   title: Text("AppBar Example"),
      //   centerTitle: true,
      //   foregroundColor: Colors.white,
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 80,
            leading: Row(
              children: [
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.accessibility_new,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            actions: [
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Text("New"),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                ),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle,
                ),
                color: Colors.black,
              ),
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.deepPurple,
                    Colors.pinkAccent,
                    Colors.yellowAccent.shade200,
                  ],
                ),
              ),
            ),
            title: Text("AppBar Example"),
            centerTitle: true,
            foregroundColor: Colors.white,
          ),
          SliverList(
            delegate: SliverChildListDelegate([]),
          )
        ],
      ),
    );
  }
}
