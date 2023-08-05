import 'package:flutter/material.dart';
import 'package:sebghat_app/view/Page/selectedCar.dart';
import 'package:sebghat_app/view/Page/viewInquiry.dart';

class NewInquiry extends StatelessWidget {
  const NewInquiry({super.key, required Size size, required TextTheme textTem});

  @override
  Widget build(BuildContext context) {
    var textTem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: size.height / 6),
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
                              builder: (context) => viewInquiry(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
