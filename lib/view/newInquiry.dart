import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sebghat_app/view/AddCar.dart';
import 'package:sebghat_app/view/selectedCar.dart';

class NewInquiry extends StatelessWidget {
  const NewInquiry({super.key});

  @override
  Widget build(BuildContext context) {
    var textTem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 17, 24, 39),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
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
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(39, 43, 65, 1),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(30))),
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(child: SizedBox()),
                    Text(
                      "خرید  -  استعلام",
                      style: textTem.headline6,
                    ),
                    const Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height / 5),
            Container(
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(81, 113, 113, 113),
                      spreadRadius: .2,
                      blurRadius: 10,
                      offset: Offset(.0, .5),
                    ),
                  ],
                  color: Color.fromRGBO(250, 250, 250, 1),
                  borderRadius: BorderRadius.all(Radius.circular(17))),
              width: 345,
              height: 360,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                      child: Text("استعلام قیمت :"),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          elevation: 2,
                          backgroundColor: const Color.fromRGBO(240, 165, 0, 1),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => text(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.add_circle_outline,
                          color: Colors.white),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
                        child: Text(" درخواست استعلام جدید",
                            style: textTem.headline4),
                      ),
                    ),
                    const Divider(
                      height: 50,
                      thickness: 1.2,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                      child: Text("پیگیری استعلام :"),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          elevation: 2,
                          backgroundColor: const Color.fromRGBO(240, 165, 0, 1),
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
                          ),
                        );
                      },
                      icon: const Icon(Icons.checklist_rtl_rounded,
                          color: Colors.white),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
                        child: Text("مشاهده استعلام های قبلی",
                            style: textTem.headline4),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
