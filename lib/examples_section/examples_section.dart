import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

import '../build_btn_widget.dart';
import '001_gf_custom_flutter_card/gf_custom_flutter_card.dart';
import '002_carousel_slider_widgets/carousel_slider_widgets.dart';

class ExamplesSection extends StatelessWidget {
  const ExamplesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Examples Section'),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          BuildBtnWidget(
            text: 'Getwidget: Card Example',
            widget: GFFlutterCardExample(),
          ),
          BuildBtnWidget(
            text: 'Getwidget: Carousel Slider Example',
            widget: CarouselSliderWidget(),
          ),
        ],
      ),
    );
  }
}
