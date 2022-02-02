import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CarouselSliderWidget extends StatefulWidget {
  CarouselSliderWidget({Key? key}) : super(key: key);

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  /// EX #1
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  /// EX #2
  final List<String> imageList2 = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
  ];

  /// EX #3
  final List<String> imageList3 = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'GFCarousel'),
      body: ListView(
        children: [
          /// EX #1
          GFCarousel(
            items: imageList.map(
              (url) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network(url, fit: BoxFit.cover, width: 1000.0),
                  ),
                );
              },
            ).toList(),
            onPageChanged: (index) {
              setState(() {
                index;
              });
            },
          ),
          Divider(
            thickness: 3,
            color: Colors.black,
          ),

          /// EX #2
          GFCarousel(
            autoPlay: true,
            items: imageList2.map(
              (url) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network(url, fit: BoxFit.cover, width: 1000.0),
                  ),
                );
              },
            ).toList(),
          ),

          Divider(
            thickness: 3,
            color: Colors.black,
          ),

          /// EX #3
          GFCarousel(
            onPageChanged: (index) => setState(() => index),
            // aspectRatio: 1.4,
            height: 300,
            // height: 300,
            items: imageList3
                .map(
                  (e) => GFCard(
                    showImage: true,
                    // title: GFListTile(
                    //     // title: Text('some quick example text'),
                    //     ),
                    boxFit: BoxFit.fill,
                    image: Image.network(
                      e,
                      fit: BoxFit.fill,
                      height: 150,
                      width: 300,
                    ),
                    content: Text(' some quick example text'),
                    buttonBar: GFButtonBar(
                      children: [
                        GFButton(
                          text: 'Buy',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
