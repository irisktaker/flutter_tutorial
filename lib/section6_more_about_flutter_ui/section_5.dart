import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:complete_dev_guide/section6_more_about_flutter_ui/03_alert_dialog/alert_dialog.dart';
import 'package:complete_dev_guide/section6_more_about_flutter_ui/04_snack_bar/snack_bar.dart';

import 'package:flutter/material.dart';

import '../build_btn_widget.dart';
import '01_flutter_toast/toast.dart';
import '02_custom_app_bar/custom_app_bar.dart';
import '05_flash_bar/flush_bar.dart';
import '06_overflow_softwrap_selectable_text/overflow_softwrap_selectable_text.dart';

class Section5 extends StatelessWidget {
  const Section5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Center(
            child: Column(
              children: [
                BuildBtnWidget(
                  text: 'Future Toast',
                  widget: const FlutterToast(),
                ),
                BuildBtnWidget(
                  text: 'Custom AppBar',
                  widget: const CustomAppBar(),
                ),
                BuildBtnWidget(
                  text: 'Alert Dialog',
                  widget: const EAlertDialog(),
                ),
                BuildBtnWidget(
                  text: 'Snack Bar',
                  widget: const E_SnackBar(),
                ),
                BuildBtnWidget(
                  text: 'Flash Bar',
                  widget: const E_FlushBar(),
                ),
                BuildBtnWidget(
                  text: 'Overflow Soft Wrap Selectable Text',
                  widget: const OverflowSoftWrapSelectableText(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
