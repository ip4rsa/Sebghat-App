import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class text_slider extends StatelessWidget {
  const text_slider({
    super.key,
    required this.textTem,
  });
  final TextTheme textTem;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 30,
        aspectRatio: 16 / 9,
        viewportFraction: 2,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.vertical,
      ),
      items: [
        'خودرو و اتوبوس',
        'ماشین الات کشاورزی',
        ' قطغات دریایی',
        'قطعات هوایی',
        'قطعات دوچرخه'
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Center(
                child: Text(
                  i,
                  style: textTem.subtitle1,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
