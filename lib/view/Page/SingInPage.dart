import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTem = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/logoBlack.png'),
              const SizedBox(height: 70),
              const Text(
                "ثبت نام در سبقت",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'yekanlight',
                ),
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
                    labelText: 'نام',
                    labelStyle: textTem.subtitle2,
                  ),
                ),
              ),
              const SizedBox(height: 7),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                    ),
                    labelText: 'نام خانوادگی',
                    labelStyle: textTem.subtitle2,
                  ),
                ),
              ),
              const SizedBox(height: 7),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                    ),
                    labelText: 'شماره تلفن',
                    labelStyle: textTem.subtitle2,
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                    ),
                    labelText: 'آدرس ایمیل',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'yekanlight',
                      fontSize: 20,
                    ),
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
                onPressed: () {},
                child: Text(
                  "ادامه",
                  style: textTem.headline2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
