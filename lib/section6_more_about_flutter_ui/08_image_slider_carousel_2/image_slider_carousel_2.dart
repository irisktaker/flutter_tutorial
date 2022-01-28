import 'package:carousel_slider/carousel_slider.dart';
import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class ImageSliderCarouselPart2 extends StatefulWidget {
  ImageSliderCarouselPart2({Key? key}) : super(key: key);

  @override
  State<ImageSliderCarouselPart2> createState() =>
      _ImageSliderCarouselPart2State();
}

class _ImageSliderCarouselPart2State extends State<ImageSliderCarouselPart2> {
  int _currentIndex = 0;

  List imgList = [
    "assets/images/s1.jpg",
    "assets/images/s2.jpg",
    "assets/images/s3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Image Slider Carousel Part 2'),
      body: ListView(
        children: [
          SizedBox(height: 30),
          Text(
            "Slider 1 initial page Index 0\n\n",
            textAlign: TextAlign.center,
          ),
          CarouselSlider(
            // important
            options: CarouselOptions(
                height: 186,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                enableInfiniteScroll: true,
                pauseAutoPlayOnTouch: true,
                onPageChanged: (index, _) {
                  setState(() {
                    _currentIndex = index;
                  });
                }),
            items: imgList.map(
              (imageUrl) {
                return Container(
                  width: double.infinity,
                  // margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                );
              },
            ).toList(),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildContainer(0),
              buildContainer(1),
              buildContainer(2),
            ],
          ),
          SizedBox(height: 30),
          Text(
            "Slider 2 initial page Index 1\n\n",
            textAlign: TextAlign.center,
          ),
          CarouselSlider.builder(
            itemCount: imgList.length,
            itemBuilder: (_, int index, int realIndex) {
              return Container(
                width: double.infinity,
                // margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  imgList[index],
                  fit: BoxFit.fill,
                ),
              );
            },

            // important
            options: CarouselOptions(
              height: 186,
              initialPage: 1,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 1),
              enableInfiniteScroll: false,
              pauseAutoPlayOnTouch: false,
              reverse: true,
              scrollDirection: Axis.vertical,
              onPageChanged: (index, _) {
                _currentIndex = index;
              },
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildContainer(0),
              buildContainer(1),
              buildContainer(2),
            ],
          ),
        ],
      ),
    );
  }

  Container buildContainer(int index) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.redAccent : Colors.green,
      ),
    );
  }
}
