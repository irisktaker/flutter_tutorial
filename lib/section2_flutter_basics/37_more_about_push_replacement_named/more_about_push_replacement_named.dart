import 'package:flutter/material.dart';

import 'screen_1.dart';
import 'screen_2.dart';

class EPushReplacementNamed extends StatelessWidget {
  const EPushReplacementNamed({Key? key}) : super(key: key);

  /// #2 SECOND METHOD WITH ROUTES
  ///
  void selectScreen(BuildContext ctx, int scrNum) {
    Navigator.of(ctx).pushReplacementNamed(
      // scrNum == 1 ? '/scr1' : '/scr2',
      scrNum == 1 ? Screen1.routeName : Screen2.routeName,
      // arguments: {
      //   'id': scrNum == 1 ? 10 : 20,
      //   'title': scrNum == 1 ? "info#1" : "info#2",
      // },
    );
  }

  @override
  Widget build(BuildContext context) {
    // for arguments
    // final Map<String, Object>? routeArguments =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, Object>?;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text('${routeArguments!['id']}'),
            // Text('${routeArguments['title']}'),
            InkWell(
              onTap: () => selectScreen(context, 1),
              child: const Text(
                "#1 Go to screen 1",
                style: TextStyle(fontSize: 24),
              ),
            ),
            InkWell(
              onTap: () => selectScreen(context, 2),
              child: const Text(
                "#1 Go to screen 2",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
