import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sebghat_app/view/Screen/userProfile.dart';
import 'homeScreen.dart';
import 'newInquiry.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

var SelectedPageIndex = 0;

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    var textTem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    List<Widget> changePage = [
      homescreen(size: size, textTem: textTem),
      NewInquiry(size: size, textTem: textTem),
      userProfile()
    ];

    return Scaffold(
        key: _key,
        appBar: AppBar(
          toolbarHeight: 71,
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(39, 43, 65, 1),
          elevation: 2,
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (() {
                    _key.currentState!.openDrawer();
                  }),
                  child: const Icon(
                    Icons.menu_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Image.asset(
                  'assets/image/logoWith.png',
                  height: 32,
                ),
                const Icon(
                  CupertinoIcons.search,
                  size: 23,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: btmNav(
          callBackPage: (int value) {
            setState(() {
              SelectedPageIndex = value;
            });
          },
        ),
        drawer: drawermenu(),
        body: changePage[SelectedPageIndex]
        //  homescreen(size: size, textTem: textTem),
        );
  }
}

class btmNav extends StatelessWidget {
  const btmNav({super.key, required this.callBackPage});
  final Function(int) callBackPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 17, 24, 39),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0), topRight: Radius.circular(0))),
      child: Padding(
        padding: EdgeInsets.all(13.0),
        child: GNav(
          backgroundColor: const Color.fromARGB(255, 17, 24, 39),
          color: const Color.fromARGB(255, 255, 255, 255),
          activeColor: Colors.white,
          tabBackgroundColor: const Color.fromARGB(133, 74, 74, 74),
          padding: const EdgeInsets.all(15),
          gap: 6,
          tabs: [
            GButton(
              onPressed: () => callBackPage(0),
              icon: Icons.home,
              iconSize: 27,
              text: 'خانه',
              textStyle: const TextStyle(
                  fontFamily: "yekanlight", color: Colors.white),
            ),
            GButton(
              onPressed: () => callBackPage(1),
              icon: Icons.shopping_basket_sharp,
              iconSize: 27,
              text: 'استعلام جدید',
              textStyle: const TextStyle(
                  fontFamily: "yekanlight", color: Colors.white),
            ),
            GButton(
              onPressed: () => callBackPage(2),
              icon: Icons.account_circle,
              iconSize: 27,
              text: 'حساب کاربری',
              textStyle: const TextStyle(
                  fontFamily: "yekanlight", color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class drawermenu extends StatelessWidget {
  const drawermenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            const Divider(
              color: Color.fromARGB(93, 255, 255, 255),
              thickness: .3,
            ),
            const SizedBox(height: 20),
            ListTile(
                title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "حساب کاربری",
                    style: TextStyle(color: Color.fromARGB(255, 87, 239, 92)),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "خروج",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
