import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../widgets/item_grids_homeS.dart';
import '../../widgets/text_slider.dart';

class homescreen extends StatelessWidget {
  homescreen({
    super.key,
    required this.size,
    required this.textTem,
  });

  final Size size;
  final TextTheme textTem;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 1130,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/backgrond.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1130,
                  color: const Color.fromARGB(182, 34, 38, 66),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: size.height / 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(17, 10, 17, 15),
                        child: Text(
                          "استعلام قیمت، خرید و فروش قطعات یدکی",
                          style: textTem.headline6,
                        ),
                      ),
                      text_slider(textTem: textTem),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              backgroundColor:
                                  const Color.fromARGB(255, 219, 153, 9),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              )),
                          onPressed: () {
                            _sowSnakbar(
                                context, 'این بخش به انتخاب شما تکمیل میشود');
                          },
                          icon:
                              const Icon(Icons.add_circle, color: Colors.white),
                          label: Padding(
                            padding: const EdgeInsets.fromLTRB(60, 13, 60, 13),
                            child: Text(" استعلام و خرید قطعه",
                                style: textTem.headline4),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      grid_items_homescreen(size: size),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
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
