import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sebghat_app/model/homeItemData.dart';

import 'newInquiry.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 17, 24, 39),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0), topRight: Radius.circular(0))),
        child: const Padding(
          padding: EdgeInsets.all(11.0),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 17, 24, 39),
            color: Color.fromARGB(255, 255, 255, 255),
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(133, 74, 74, 74),
            padding: EdgeInsets.all(15),
            gap: 6,
            tabs: [
              GButton(
                // onPressed: () => callBackPage(0),
                icon: Icons.home,
                text: 'خانه',
                textStyle:
                    TextStyle(fontFamily: "yekanlight", color: Colors.white),
              ),
              GButton(
                // onPressed: () => callBackPage(1),
                icon: Icons.add,
                text: 'استعلام جدید',
                textStyle:
                    TextStyle(fontFamily: "yekanlight", color: Colors.white),
              ),
              GButton(
                // onPressed: () => callBackPage(2),
                icon: Icons.account_balance,
                text: 'حساب کاربری',
                textStyle:
                    TextStyle(fontFamily: "yekanlight", color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 5,
        backgroundColor: const Color.fromRGBO(39, 43, 65, 1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Image.asset(
                    'assets/image/logoWith.png',
                    scale: 1.4,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text(
                    "پروفایل کاربری",
                    style: TextStyle(
                      fontFamily: 'yekanlight',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text(
                    "درباره سبقت",
                    style: TextStyle(
                      fontFamily: 'yekanlight',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text(
                    "اشتراک گذاری سبقت",
                    style: TextStyle(
                      fontFamily: 'yekanlight',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text(
                    "پشتیبانی",
                    style: TextStyle(
                      fontFamily: 'yekanlight',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
      body: SafeArea(
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
                  //---------- App Bar
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(39, 43, 65, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.menu_rounded,
                              size: 32,
                            ),
                            Image.asset(
                              'assets/image/logoWith.png',
                              height: 30,
                            ),
                            const Icon(
                              Icons.account_circle,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: size.height / 5.5),
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
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
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
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
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
                            icon: const Icon(Icons.add_circle,
                                color: Colors.white),
                            label: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(60, 13, 60, 13),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
