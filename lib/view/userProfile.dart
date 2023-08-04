import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userProfile extends StatelessWidget {
  const userProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            color: const Color.fromRGBO(33, 43, 65, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'assets/image/logoWith.png',
                    height: 24,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    CupertinoIcons.list_dash,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Icon(Icons.edit),
                ),
                const Expanded(child: SizedBox()),
                const Text(
                  'دانیال حسینی',
                  style: TextStyle(
                    fontFamily: 'yekanmedum',
                    fontSize: 21,
                  ),
                ),
                const SizedBox(width: 15),
                // SvgPicture.asset(
                //   'assets/image/undraw_male_avatar_g98d.svg',
                //   height: 55,
                // ),
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
          const Text(
            '.شما در حال حاضر استعلام فعالی ندارید',
            style: TextStyle(
              fontFamily: 'yekanlight',
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
