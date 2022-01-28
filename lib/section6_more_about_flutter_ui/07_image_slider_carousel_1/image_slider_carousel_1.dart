import 'package:carousel_slider/carousel_slider.dart';
import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class ImageSliderCarouselPart1 extends StatelessWidget {
  ImageSliderCarouselPart1({Key? key}) : super(key: key);

  List imgList = [
    "assets/images/s1.jpg",
    "assets/images/s2.jpg",
    "assets/images/s3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Image Slider Carousel Part 1'),
      body: ListView(
        children: [
          SizedBox(height: 30),
          Text(
            "Slider 1 initial page Index 0\n\n",
            textAlign: TextAlign.center,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 186,
              initialPage: 0,
            ),
            items: imgList.map(
              (imageUrl) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                );
              },
            ).toList(),
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
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  imgList[index],
                  fit: BoxFit.fill,
                ),
              );
            },
            options: CarouselOptions(
              height: 186,
              initialPage: 1,
            ),
          ),
        ],
      ),
    );
  }
}
