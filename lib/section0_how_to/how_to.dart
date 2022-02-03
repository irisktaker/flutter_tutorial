import 'package:complete_dev_guide/section0_how_to/01_show_hide_password/show_hide_password.dart';
import 'package:complete_dev_guide/section0_how_to/02_use_validate/use_validate_on_text_form_field_2.dart';
import 'package:complete_dev_guide/section0_how_to/04_LinearGradient/linear_gradient.dart';
import 'package:complete_dev_guide/section0_how_to/05_bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:complete_dev_guide/section0_how_to/07_tab_bar/tab_bar.dart';
import 'package:complete_dev_guide/section0_how_to/10_avoiding_on_screen_keyboard/avoiding_on_screen_keyboard.dart';
import 'package:flutter/material.dart';

import '../build_btn_widget.dart';
import '02_use_validate/use_validate_on_text_field.dart';
import '02_use_validate/use_validate_on_text_form_field.dart';
import '03_stream_controller_and_stream_subscription/stream_controller_and_stream_subscription.dart';
import '06_sliver_list/sliver_list.dart';

import '08_making_scrollable_tabs_with_tab_bar/making_scrollable_tabs_with_tab_bar.dart';
import '11_bottom_overflowed_error_caused_by_keyboard/bottom_overflowed_error_caused_by_keyboard.dart';
import 'back_button.dart';

class HowToSection extends StatelessWidget {
  const HowToSection({Key? key}) : super(key: key);

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
                    text: 'Show Hide Password',
                    widget: const ShowHidePassword()),
                BuildBtnWidget(
                    text: 'Use Validate On TextField',
                    widget: const UseValidateOnTextField()),
                BuildBtnWidget(
                    text: 'Use Validate On TextFormField',
                    widget: const UseValidateOnTextFormField()),
                BuildBtnWidget(
                    text: 'Use Validate On TextFormField',
                    widget: const UseValidateOnTextFormFieldPart2()),
                BuildBtnWidget(
                    text: 'Stream Example', widget: const StreamExample()),
                BuildBtnWidget(
                    text: 'Linear Gradient',
                    widget: const ExampleLinearGradient()),
                BuildBtnWidget(
                    text: 'Bottom Navigation Bar',
                    widget: const ExampleOnBottomNavBar()),
                BuildBtnWidget(
                    text: 'Sliver List', widget: const ExampleSliverList()),
                BuildBtnWidget(text: 'Tab Bar', widget: const ETabBar()),
                BuildBtnWidget(
                    text: 'Making Scrollable Tabs With TabBar',
                    widget: const MakingScrollableTabsWithTabBar()),
                BuildBtnWidget(
                    text: 'Avoiding On Screen Keyboard',
                    widget: const AvoidingOnScreenKeyboard()),
                BuildBtnWidget(
                    text: '“Bottom Overflowed” error caused by the keyboard',
                    widget: BottomOverflowedErrorCausedByTheKeyboard()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
