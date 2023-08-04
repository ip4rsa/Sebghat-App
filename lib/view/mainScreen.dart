import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sebghat_app/view/userProfile.dart';
import 'homeScreen.dart';
import 'newInquiry.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    List<Widget> changePage = [homeScreen(), NewInquiry(), userProfile()];

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
                  size: 31,
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
      bottomNavigationBar: btmNav(),
      drawer: drawermenu(),
      body: homescreen(size: size, textTem: textTem),
    );
  }
}

class btmNav extends StatelessWidget {
  const btmNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 17, 24, 39),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0), topRight: Radius.circular(0))),
      child: const Padding(
        padding: EdgeInsets.all(15.0),
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
            InkWell(
              onTap: () {},
              child: const ListTile(
                  title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "حساب کاربری",
                    style: TextStyle(color: Color.fromARGB(255, 87, 239, 92)),
                  ),
                  Text(
                    "خروج",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
