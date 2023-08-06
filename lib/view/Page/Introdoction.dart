import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'LogInpage.dart';

class introdoction extends StatefulWidget {
  const introdoction({Key? key}) : super(key: key);

  @override
  State<introdoction> createState() => _introdoctionState();
}

class _introdoctionState extends State<introdoction> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // persian
      ],
      theme: ThemeData(
        fontFamily: 'yekanlight',
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontFamily: 'yekanbold', fontSize: 19, color: Colors.black),
          headline2: TextStyle(
              fontFamily: 'yekanbold', fontSize: 19, color: Colors.white),
          headline3: TextStyle(
              fontFamily: 'yekanmedum', fontSize: 18, color: Colors.black),
          headline4: TextStyle(
              fontFamily: 'yekanmedum', fontSize: 18, color: Colors.white),
          headline5: TextStyle(
              fontFamily: 'yekanmedum', fontSize: 19, color: Colors.black),
          headline6: TextStyle(
              fontFamily: 'yekanlight', fontSize: 22, color: Colors.white),
          subtitle1: TextStyle(
              fontFamily: 'yekanlight', fontSize: 18, color: Colors.white),
          subtitle2: TextStyle(
              fontFamily: 'yekanlight', fontSize: 18, color: Colors.black),
          bodyText1: TextStyle(
              fontFamily: 'yekanlight', fontSize: 19, color: Colors.white),
          bodyText2: TextStyle(
              fontFamily: 'yekanlight', fontSize: 19, color: Colors.black),
        ),
        primarySwatch: Colors.orange,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      home: const OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);
  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => LogInPage()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        fontFamily: 'yekanlight',
      ),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: false,
      autoScrollDuration: 9999999,
      infiniteAutoScroll: false,
      globalHeader: const Align(
        alignment: Alignment.topRight,
      ),
      pages: [
        PageViewModel(
          title: "بهترین قیمت قطعات",
          body: "استعلام قیمت، خرید و فروش قطعات یدکی",
          image: Image.asset(
            'assets/image/introduction/img3.png',
            scale: .7,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "بهترین تحربه خرید",
          body: "تضمین  بهترین قیمت و اصالت قطعات",
          image: Image.asset(
            'assets/image/introduction/img2.png',
            scale: .7,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "استعلام آسان قطعات",
          body: "قطعه مورد نظر خود در در بین هزاران قطعه موجود برسی کنید",
          image: Image.asset(
            'assets/image/introduction/img1.png',
            scale: .7,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "سفارش سریع قطعات",
          body:
              "ما سفارش های شمارا در کمترین زمان ممکن به دست شما خواهیم رساند",
          image: Image.asset(
            'assets/image/introduction/img4.png',
            scale: .7,
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      back: const Icon(Icons.arrow_back),
      skip: const Text('گذر کن',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'yekanlight',
          )),
      next: const Icon(CupertinoIcons.right_chevron),
      done: const Text('ادامه',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'yekanlight',
          )),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(20),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
