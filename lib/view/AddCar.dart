import 'package:flutter/material.dart';
import 'package:sebghat_app/view/LogInpage.dart';
import 'package:sebghat_app/view/selectedCar.dart';

class DropDwonMenu extends StatefulWidget {
  const DropDwonMenu({super.key});

  @override
  State<DropDwonMenu> createState() => _DropDwonMenuState();
}

class _DropDwonMenuState extends State<DropDwonMenu> {
  final items = ['مرسدس بنز', 'آ او دی', 'پژو 207', 'ایران خودرو'];
  String? value;
  String dropValue = 'ok';
  @override
  Widget build(BuildContext context) {
    var textTem = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                        "ثبت خودرو جدید",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 253, 253, 253),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                        color: Color.fromARGB(78, 74, 74, 74), width: 1),
                  ),
                  // height: 800,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 20, 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.car_crash_outlined,
                              color: Colors.orange,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "مشخصات خودرو",
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 18, 15),
                            child: Text("برند خودرو :"),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 253, 253, 253),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7)),
                            border: Border.all(
                                color: const Color.fromARGB(125, 250, 172, 15),
                                width: 2),
                          ),
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: value,
                                isExpanded: true,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                iconSize: 30,
                                elevation: 3,
                                items: items.map(buildMemuItem).toList(),
                                onChanged: (value) =>
                                    setState(() => this.value = value),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 18, 15),
                            child: Text("مدل خودرو :"),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 253, 253, 253),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7)),
                            border: Border.all(
                                color: const Color.fromARGB(125, 250, 172, 15),
                                width: 2),
                          ),
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: value,
                                isExpanded: true,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                iconSize: 30,
                                elevation: 3,
                                items: items.map(buildMemuItem).toList(),
                                onChanged: (value) =>
                                    setState(() => this.value = value),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 18, 15),
                            child: Text("رنگ خودرو :"),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 253, 253, 253),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7)),
                            border: Border.all(
                                color: const Color.fromARGB(125, 250, 172, 15),
                                width: 2),
                          ),
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: value,
                                isExpanded: true,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                iconSize: 30,
                                elevation: 3,
                                items: items.map(buildMemuItem).toList(),
                                onChanged: (value) =>
                                    setState(() => this.value = value),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 18, 20),
                            child: Text('سال ساخت خودرو : '),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: TextField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: 'سال ساخت',
                            labelStyle: textTem.subtitle2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 204, 204, 204),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                Text(
                                  "این بخش فقط برای خودروهای وارداتی مورد نیاز است، لطفا در صورتی که خودروی شما وارداتی است آن را تکمیل کنید.",
                                  style: textTem.headline5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                  child: TextField(
                                    textDirection: TextDirection.rtl,
                                    decoration: InputDecoration(
                                        border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        labelText: 'شماره شاسی',
                                        labelStyle: textTem.subtitle2,
                                        filled: true,
                                        fillColor: const Color.fromARGB(
                                            255, 255, 255, 255)),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text("عکس شاسی"),
                                const SizedBox(height: 5),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LogInPage(),
                                        ));
                                  },
                                  child: Text(
                                    "افزودن تصویر",
                                    style: textTem.headline4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 18),
                                child: Text("توضیحات :"),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: TextField(
                              textDirection: TextDirection.rtl,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 45, horizontal: 10),
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  labelText: 'توضیحات مربوطه را بنویسید...',
                                  labelStyle: textTem.subtitle2,
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        ],
                      )
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

  DropdownMenuItem<String> buildMemuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(color: const Color.fromARGB(255, 45, 36, 12)),
        ),
      );
}
