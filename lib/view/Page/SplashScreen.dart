import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'LogInpage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LogInPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(44, 37, 57, 1),
        body: Center(
          child: SafeArea(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/image/logoWith.png', height: 45),
                    const SizedBox(height: 20),
                  ],
                ),
                const Positioned(
                  bottom: 85,
                  left: 0,
                  right: 0,
                  child: SpinKitThreeBounce(
                      color: Color.fromRGBO(240, 156, 0, 1), size: 19.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
