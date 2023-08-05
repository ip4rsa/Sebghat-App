import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final ghatae = ['جلوبندی', 'گیربکس', 'لاستیک', 'موتوری'];
  final tipe = ['نو', 'کاکرده', 'هردو'];
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
                        "استعلام محصول جدید",
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
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(61, 113, 113, 113),
                        spreadRadius: .3,
                        blurRadius: 5,
                        offset: Offset(.0, .5),
                      ),
                    ],
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                        color: const Color.fromARGB(78, 74, 74, 74), width: 1),
                  ),
                  // height: 800,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 20, 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.orange,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "قطعه مورد نظر را ثبت کنید",
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 18, 15),
                            child: Text("نوع قطعه :"),
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
                                items: ghatae.map(buildMemuItem).toList(),
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
                            child: Text("وضغیت قطعه :"),
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
                                items: tipe.map(buildMemuItem).toList(),
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
                            padding: EdgeInsets.fromLTRB(0, 20, 18, 20),
                            child: Text('عنوان : '),
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
                            labelText: 'نام قطعه',
                            labelStyle: textTem.subtitle2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 18, 20),
                            child: Text('برند : '),
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
                            labelText: 'برند قطعه',
                            labelStyle: textTem.subtitle2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 18, 20),
                            child: Text('تعداد : '),
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
                            labelText: 'تعداد قطعه',
                            labelStyle: textTem.subtitle2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  const Text("عکس قطعه"),
                                  const SizedBox(height: 10),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 5, 10, 5)),
                                    onPressed: () {},
                                    child: Text(
                                      "افزودن تصویر",
                                      style: textTem.headline4,
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 5, 20),
                        child: Row(
                          children: [
                            const Icon(Icons.tab_rounded),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Colors.orange,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  )),
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.check, color: Colors.white),
                              label: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Text("افزودن قطعه",
                                    style: textTem.headline4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "پس از افزودن قطعه مورد نظر، سفارش خودرا ثبت کنید",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () =>
                            _sowSnakbar(context, 'سفارش شما با موفقیت ثبت شد'),
                        style: ElevatedButton.styleFrom(
                            elevation: 2,
                            backgroundColor:
                                const Color.fromARGB(255, 6, 160, 75),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            )),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                          child: Text(
                            "ثبت سفارش",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                            elevation: 2,
                            backgroundColor:
                                const Color.fromARGB(182, 34, 38, 66),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            )),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(62, 7, 62, 8),
                          child: Text(
                            "بازگشت",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
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
          style: const TextStyle(color: Color.fromARGB(255, 29, 29, 29)),
        ),
      );
}

void _sowSnakbar(BuildContext context, String massage) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      massage,
      style: const TextStyle(fontFamily: 'yekanlight', fontSize: 18),
    ),
    backgroundColor: const Color.fromARGB(255, 6, 160, 75),
  ));
}
