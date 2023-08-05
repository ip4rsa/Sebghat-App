import 'package:flutter/material.dart';
import 'package:sebghat_app/view/Screen/mainScreen.dart';
import 'package:sebghat_app/view/Page/SingInPage.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTem = Theme.of(context).textTheme;
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/image/logoBlack.png'),
          const SizedBox(height: 55),
          Text(
            "ورود به حساب کاربری",
            textDirection: TextDirection.rtl,
            style: textTem.headline3,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: TextField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(17)),
                ),
                labelText: 'نام کاربری',
                labelStyle: textTem.subtitle2,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: TextField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(17)),
                ),
                labelText: 'رمز عبور',
                labelStyle: textTem.subtitle2,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                padding: const EdgeInsets.fromLTRB(140, 10, 140, 10)),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homeScreen(),
                  ));
            },
            child: Text(
              "ورود",
              style: textTem.headline2,
            ),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                'حساب کاربری ندارید؟',
                style: textTem.subtitle2,
              ),
              const SizedBox(width: 14),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingInPage(),
                  ),
                ),
                child: Text(
                  'ثبت نام کنید',
                  style: textTem.headline3,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
