import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/homeItemData.dart';
import 'newInquiry.dart';

class homescreen extends StatelessWidget {
  const homescreen({
    super.key,
    required this.size,
    required this.textTem,
  });

  final Size size;
  final TextTheme textTem;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 1200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/backgrond.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1200,
                  color: const Color.fromARGB(182, 34, 38, 66),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: size.height / 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(17, 10, 17, 15),
                        child: Text(
                          "استعلام قیمت، خرید و فروش قطعات یدکی",
                          style: textTem.headline6,
                        ),
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 30,
                          aspectRatio: 16 / 9,
                          viewportFraction: 2,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
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
                                      '$i',
                                      style: textTem.subtitle1,
                                    ),
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              backgroundColor:
                                  const Color.fromRGBO(240, 165, 0, 1),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NewInquiry(),
                                ));
                          },
                          icon:
                              const Icon(Icons.add_circle, color: Colors.white),
                          label: Padding(
                            padding: const EdgeInsets.fromLTRB(60, 13, 60, 13),
                            child: Text(" استعلام و خرید قطعه",
                                style: textTem.headline4),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 310,
                          height: 810,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: itemGridList.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12,
                                    mainAxisSpacing: 15),
                            itemBuilder: (context, index) {
                              return Center(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(248, 248, 248, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  width: size.width / 2,
                                  height: 950,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: 60,
                                          height: 60,
                                          decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  240, 165, 0, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Image.asset(
                                            itemGridList[index].icon,
                                            scale: 1.6,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(itemGridList[index].name),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
