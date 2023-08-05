import 'package:flutter/material.dart';
import 'package:sebghat_app/view/Page/SplashScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(Sebghat());
}

class Sebghat extends StatelessWidget {
  const Sebghat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
