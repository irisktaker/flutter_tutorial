import 'package:complete_dev_guide/section2_flutter_basics/33_passing_data_between_screens/routes/push_routes.dart';
import 'package:flutter/material.dart';

import 'screen1.dart';
import 'screen2.dart';

class EMPassingData extends StatelessWidget {
  final String? str;

  const EMPassingData({Key? key, this.str}) : super(key: key);

  /// #1 FIRST METHOD WITH PUSH OR PUSH REPLACMENT
  /// ------------>>> or add String for the name of the page
  /// and maybe use switch
  /// and use pushReplacement
  void selectScreen(BuildContext ctx, int numberOfScreen) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      if (numberOfScreen == 1) {
        // we can make any variable or multi variables
        return const Screen1("Information 1");
      } else {
        return const Screen2("Information 2");
      }
    }));
  }

  /// #2 SECOND METHOD WITH ROUTES
  ///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EPushRoutes(),
                    ),
                  );
                },
                child: const Text("Go to routes "))
          ],
        ),
      ),
    );
  }
}
