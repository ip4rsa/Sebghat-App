import 'package:flutter/material.dart';

class viewInquiry extends StatefulWidget {
  const viewInquiry({super.key});

  @override
  State<viewInquiry> createState() => _viewInquiryState();
}

Widget _buildCell(String text, Color color) {
  return Container(
    color: color,
    padding: const EdgeInsets.all(8),
    child: Text(text),
  );
}

class _viewInquiryState extends State<viewInquiry> {
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
                      "مشاهده استعلام ها",
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
              width: 373,
              height: 300,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15, bottom: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.electric_bolt_rounded,
                            color: Colors.orangeAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                            child: Text("لیست استعلام های من :"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Table(
                        border: TableBorder.all(),
                        children: [
                          TableRow(
                            children: [
                              _buildCell('تاریخ	',
                                  const Color.fromRGBO(228, 232, 249, 1)),
                              _buildCell('برند',
                                  const Color.fromRGBO(228, 232, 249, 1)),
                              _buildCell('مدل',
                                  const Color.fromRGBO(228, 232, 249, 1)),
                              _buildCell('کلاس',
                                  const Color.fromRGBO(228, 232, 249, 1)),
                              _buildCell('سال',
                                  const Color.fromRGBO(228, 232, 249, 1)),
                              _buildCell('نتیجه',
                                  const Color.fromRGBO(228, 232, 249, 1)),
                            ],
                          ),
                          TableRow(
                            children: [
                              _buildCell('1402/5/13', Colors.white),
                              _buildCell('تسلا', Colors.white),
                              _buildCell('مدل 3', Colors.white),
                              _buildCell('-', Colors.white),
                              _buildCell('1400', Colors.white),
                              _buildCell('برسی', Colors.white),
                            ],
                          ),
                        ],
                      ),
                    )
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
