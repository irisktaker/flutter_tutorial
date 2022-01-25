import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:complete_dev_guide/section6_more_about_flutter_ui/section_5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class FlutterToast extends StatelessWidget {
  const FlutterToast({Key? key}) : super(key: key);

  Column toastBtn(
    BuildContext context, {
    required String text,
    required void Function() onPress,
  }) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: TextButton(
            onPressed: onPress,
            child: Text(text),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

// https://pub.dev/packages/flutter_styled_toast

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Toast'),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            toastBtn(
              context,
              text: "Simple to use, no global configuration",
              onPress: () => showToast("hello styled toast", context: context),
            ),
            toastBtn(
              context,
              text: 'Customize toast content widget, no global configuration',
              onPress: () =>
                  showToastWidget(Text('hello styled toast'), context: context),
            ),
            toastBtn(
              context,
              text: 'Interactive toast, set [isIgnoring] false.',
              onPress: () => showToastWidget(
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: Colors.green[600],
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Jump to new page',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          ToastManager().dismissAll(showAnim: true);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Section5();
                          }));
                        },
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                context: context,
                isIgnoring: false,
                duration: Duration.zero,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ///Set both animation and reverse animation,
          ///combination different animation and reverse animation to achieve amazing effect.
          showToast(
            'This is normal toast with animation',
            context: context,
            animation: StyledToastAnimation.scale,
            reverseAnimation: StyledToastAnimation.fade,
            // position: StyledToastPosition.center,
            position: StyledToastPosition(
                align: Alignment.bottomCenter, offset: 140.0),
            animDuration: Duration(seconds: 1),
            duration: Duration(seconds: 4),
            curve: Curves.elasticOut,
            reverseCurve: Curves.linear,
          );
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }
}
