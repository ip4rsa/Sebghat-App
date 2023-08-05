import 'package:flutter/material.dart';
import 'package:sebghat_app/view/AddCar.dart';
import 'package:sebghat_app/view/OrderPage.dart';

class text extends StatefulWidget {
  const text({super.key});

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  @override
  Widget build(BuildContext context) {
    var textTem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                      "درخواست استعلام",
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
            SizedBox(height: size.height / 7),
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
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                      child: Text("خودرو های ثبت شده شما :"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("مرسدس ای ام جی"),
                          Image.asset(
                            'assets/image/2022-AMG-GT43-4DR-COUPE-AVP-DR.png',
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          style: ElevatedButton.styleFrom(
                              elevation: 2,
                              backgroundColor: Color.fromARGB(182, 41, 44, 70),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              )),
                          child: const Text(
                            "بازگشت",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrderPage(),
                              )),
                          style: ElevatedButton.styleFrom(
                              elevation: 2,
                              backgroundColor:
                                  const Color.fromARGB(182, 34, 38, 66),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              )),
                          child: const Text(
                            "مرحله بعد",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 40),
            const Divider(
              height: 55,
              thickness: .5,
              endIndent: 60,
              indent: 60,
              color: Color.fromARGB(51, 164, 164, 164),
            ),
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
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                      child: Text("ثبت خودرو جدید"),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
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
                            builder: (context) => AddCar(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.add_circle_outline,
                          color: Colors.white),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
                        child: Text("ثبت خودرو", style: textTem.headline4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Radio(
            //   value: "radio value",
            //   groupValue: "group value",
            //   onChanged: (value) {
            //     print(value); //selected value
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
