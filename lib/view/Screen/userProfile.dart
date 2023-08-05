import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class userProfile extends StatelessWidget {
  const userProfile({super.key});

  Widget _buildCell(String text, Color color) {
    return Container(
      color: color,
      padding: const EdgeInsets.all(8),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'assets/image/undraw_male_avatar_g98d.svg',
                  height: 10,
                ),
                const Text(
                  'دانیال حسینی',
                  style: TextStyle(
                    fontFamily: 'yekanmedum',
                    fontSize: 21,
                  ),
                ),
                const Expanded(child: SizedBox()),
                const Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Icon(
                    Icons.edit,
                    color: Colors.amber,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: 340,
            // height: 200,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 237, 237, 237),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 20, 8, 15),
                    child: Text(
                      ': ماشین های شما',
                      style: TextStyle(
                          fontFamily: 'yekanmedum',
                          fontSize: 19,
                          color: Color.fromARGB(255, 23, 23, 23)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/image/mercedes.png',
                        height: 70,
                      ),
                      const Text(
                        'مرسدس بنز جی تی',
                        style: TextStyle(
                            fontFamily: 'yekanmedum',
                            fontSize: 18,
                            color: Color.fromARGB(255, 16, 16, 16)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Divider(thickness: 1.2),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                const Color.fromARGB(255, 235, 144, 6),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          icon:
                              const Icon(Icons.car_crash, color: Colors.white),
                          label: const Text(
                            "انتخاب",
                            style: TextStyle(
                              fontFamily: 'yekanmedum',
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Text(
                          style: TextStyle(fontFamily: 'yekanlight'),
                          'ثبت خودرو جدید',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
          // SvgPicture.asset(
          //   'assets/image/undraw_add_files_re_v09g.svg',
          //   height: 100,
          // ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    _buildCell(
                        'تاریخ	', const Color.fromRGBO(228, 232, 249, 1)),
                    _buildCell('برند', const Color.fromRGBO(228, 232, 249, 1)),
                    _buildCell('مدل', const Color.fromRGBO(228, 232, 249, 1)),
                    _buildCell('کلاس', const Color.fromRGBO(228, 232, 249, 1)),
                    _buildCell('سال', const Color.fromRGBO(228, 232, 249, 1)),
                    _buildCell('نتیجه', const Color.fromRGBO(228, 232, 249, 1)),
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
    );
  }
}
