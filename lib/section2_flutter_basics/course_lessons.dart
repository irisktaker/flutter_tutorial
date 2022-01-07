import 'package:flutter/material.dart';

// ----
import '01_widget_tree/widget_tree.dart';
import '02_body/body.dart';
import '03_app_bar/app_bar.dart';
import '04_container/container.dart';
import '05_colors/colors.dart';
import '06_column_row/column_row.dart';
import '07_text_style/text_style.dart';
import '08_buttons/buttons.dart';
import '09_buttons_style/buttons_style.dart';
import '10_icon_button_onpressed/icon_button_opressed.dart';
import '11_buttons_summary/buttons_summary.dart';
import '12_fab/fab.dart';
import '13_stateful_widget/stateful_widget.dart';
import '14_text_field_part1/text_field_part1.dart';
import '15_text_field_part2_visibility/text_field_part2_visibility.dart';
import '16_dark_theme/dark_theme.dart';
import '17_text_field_part3_controller/text_field_part3_controller.dart';
import '18_age_calculator_app/age_calculator_app.dart';
import '19_appbar_background_color/appbar_background_color.dart';
import '20_margin_and_padding/margin_and_padding.dart';
import '21_splitting_the_app/splitting_the_app.dart';
import '22_stack_and_alignment/stack_and_alignment.dart';
import '23_column_and_row_alignment/column_and_row_alignment.dart';
import '24_map_function/map_function.dart';
import '25_card_and_listview/card_and_map_finction.dart';
import '26_bottom_sheet/bottm_sheet.dart';
import '27_external_library_and_fontfamily/external_library_and_fontfamily.dart';
import '29_date_picker/date_picker.dart';
import '30_expanded/expanded.dart';
import '31_gridview_and_linear_gradient/gridview_and_linear_gradient.dart';
import '32_multi_screens/multi_screens.dart';
import '33_passing_data_between_screens/push_push_replacement/passing_data_between_screens.dart';
import '34_drawer/drawer.dart';
import '35_tab_bar/tab_bar.dart';
import '36_bottom_navigation_bar/bottom_navigation_bar.dart';
import '37_more_about_push_replacement_named/more_about_push_replacement_named.dart';
import '39_slider/slider.dart';
import '40_transform/transform.dart';
import '41_transform2/transform2.dart';

class CourseLessons extends StatelessWidget {
  const CourseLessons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('flutter_dev_guide'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Center(
            child: Column(
              children: [
                buildBtnWidget(
                    text: "Widget Tree",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const WidgetTree()));
                    }),
                buildBtnWidget(
                    text: "Body",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const Body()));
                    }),
                buildBtnWidget(
                    text: "AppBar",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EAppBar()));
                    }),
                buildBtnWidget(
                    text: "Container",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EContainer()));
                    }),
                buildBtnWidget(
                    text: "Colors",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EColors()));
                    }),
                buildBtnWidget(
                    text: "Column Row",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EColumnRow()));
                    }),
                buildBtnWidget(
                    text: "Text Style",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ETextStyle()));
                    }),
                buildBtnWidget(
                    text: "Buttons",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EButtons()));
                    }),
                buildBtnWidget(
                    text: "Buttons Style",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EButtonsStyle()));
                    }),
                buildBtnWidget(
                    text: "Icon Buttons",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EIconButtons()));
                    }),
                buildBtnWidget(
                    text: "Buttons Summary",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EButtonsSummary()));
                    }),
                buildBtnWidget(
                    text: "Floating Action Button",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const FAB()));
                    }),
                buildBtnWidget(
                    text: "State Full",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EStateFull()));
                    }),
                buildBtnWidget(
                    text: "Text Field Part #1",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => ETField()));
                    }),
                buildBtnWidget(
                    text: "Text Field Part #2",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const ETField2()));
                    }),
                buildBtnWidget(
                    text: "Dark Theme",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const EDarkTheme()));
                    }),
                buildBtnWidget(
                    text: "Text Field Part 3",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ETextField3()));
                    }),
                buildBtnWidget(
                    text: "** Age Calculator App **",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ECalcAgeApp()));
                    }),
                buildBtnWidget(
                    text: "App Bar Background color",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EAppBarBGColor()));
                    }),
                buildBtnWidget(
                    text: "Margin and Padding",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EMarginAndPadding()));
                    }),
                buildBtnWidget(
                    text: "** Splitting the app **",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ESplittingApp()));
                    }),
                buildBtnWidget(
                    text: "Stack And Alignment",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EStackAndAlignment()));
                    }),
                buildBtnWidget(
                    text: "Column And Row",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EColumnAndRow()));
                    }),
                buildBtnWidget(
                    text: "Map Function",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  EMapFunction()));
                    }),
                buildBtnWidget(
                    text: "Card and Listview",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ECardAndMapFunction()));
                    }),
                buildBtnWidget(
                    text: "Bottom Sheet",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  EBottomSheet()));
                    }),
                buildBtnWidget(
                    text: "External Libraty and Fontfamily",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  EExternalLibrary()));
                    }),
                buildBtnWidget(
                    text: "Images",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ESplittingApp()));
                    }),
                buildBtnWidget(
                    text: "Date Picker",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EDatePicker()));
                    }),
                buildBtnWidget(
                    text: "Expanded",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EExpanded()));
                    }),
                buildBtnWidget(
                    text: "Gridview and Linear gradient",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EGridView()));
                    }),
                buildBtnWidget(
                    text: "Multi screens",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EMultiScreens()));
                    }),
                buildBtnWidget(
                    text: "Passing data between screens",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EMPassingData()));
                    }),
                buildBtnWidget(
                    text: "Drawer",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EDrawer()));
                    }),
                buildBtnWidget(
                    text: "** Tab bar",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ETapBar()));
                    }),
                buildBtnWidget(
                    text: "Bottom navigation bar",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EBottomNavigationBar()));
                    }),
                buildBtnWidget(
                    text: "Push replacement named",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EPushReplacementNamed()));
                    }),
                buildBtnWidget(
                    text: "Pop",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ESplittingApp()));
                    }),
                buildBtnWidget(
                    text: "Slider",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ESlider()));
                    }),
                buildBtnWidget(
                    text: "Transform",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ETransform()));
                    }),
                buildBtnWidget(
                    text: "Transform2",
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const Transform2()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBtnWidget({
    required String? text,
    Function()? onPress,
  }) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            child: Text(text!),
            onPressed: onPress,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
