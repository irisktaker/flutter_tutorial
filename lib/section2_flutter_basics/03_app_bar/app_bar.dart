
import 'package:flutter/material.dart';

class EAppBar extends StatelessWidget {
  const EAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar() constructor can not be const
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("App Bar"),
        centerTitle: true,
        elevation: 15,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications)),
        ],
      ),
    );
  }
}
