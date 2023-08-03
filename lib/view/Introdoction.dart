// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:sebghat_app/view/LogInpage.dart';

// class App extends StatefulWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//       SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
//     );

//     return MaterialApp(
//       title: 'Introduction screen',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.orange),
//       home: const OnBoardingPage(),
//     );
//   }
// }

// class OnBoardingPage extends StatefulWidget {
//   const OnBoardingPage({Key? key}) : super(key: key);
//   @override
//   OnBoardingPageState createState() => OnBoardingPageState();
// }

// class OnBoardingPageState extends State<OnBoardingPage> {
//   final introKey = GlobalKey<IntroductionScreenState>();
//   void _onIntroEnd(context) {
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(builder: (_) => LogInPage()),
//     );
//   }

//   Widget _buildFullscreenImage() {
//     return Image.asset(
//       'assets/fullscreen.jpg',
//       fit: BoxFit.cover,
//       height: double.infinity,
//       width: double.infinity,
//       alignment: Alignment.center,
//     );
//   }

//   Widget _buildImage(String assetName, [double width = 350]) {
//     return Image.asset('assets/$assetName', width: width);
//   }

//   @override
//   Widget build(BuildContext context) {
//     const bodyStyle = TextStyle(fontSize: 19.0);

//     const pageDecoration = PageDecoration(
//       titleTextStyle: TextStyle(
//         fontSize: 28.0,
//         fontWeight: FontWeight.w700,
//         fontFamily: 'yekanlight',
//       ),
//       bodyTextStyle: bodyStyle,
//       bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//       pageColor: Colors.white,
//       imagePadding: EdgeInsets.zero,
//     );

//     return IntroductionScreen(
//       key: introKey,
//       globalBackgroundColor: Colors.white,
//       allowImplicitScrolling: false,
//       autoScrollDuration: 9999999,
//       infiniteAutoScroll: false,
//       globalHeader: const Align(
//         alignment: Alignment.topRight,
//       ),
//       pages: [
//         PageViewModel(
//           title: "بهترین قیمت قطعات",
//           body: "استعلام قیمت، خرید و فروش قطعات یدکی",
//           image: Image.asset(
//             'assets/image/introduction/img3.png',
//             scale: .7,
//           ),
//           decoration: pageDecoration,
//         ),
//         PageViewModel(
//           title: "بهترین تحربه خرید",
//           body: "تضمین  بهترین قیمت و اصالت قطعات",
//           image: Image.asset(
//             'assets/image/introduction/img2.png',
//             scale: .7,
//           ),
//           decoration: pageDecoration,
//         ),
//         PageViewModel(
//           title: "استعلام آسان قطعات",
//           body: "قطعه مورد نظر خود در در بین هزاران قطعه موجود برسی کنید",
//           image: Image.asset(
//             'assets/image/introduction/img1.png',
//             scale: .7,
//           ),
//           decoration: pageDecoration,
//         ),
//         PageViewModel(
//           title: "سفارش سریع قطعات",
//           body:
//               "ما سفارش های شمارا در کمترین زمان ممکن به دست شما خواهیم رساند",
//           image: Image.asset(
//             'assets/image/introduction/img4.png',
//             scale: .7,
//           ),
//           decoration: pageDecoration,
//         ),
//       ],
//       onDone: () => _onIntroEnd(context),
//       onSkip: () => _onIntroEnd(context), // You can override onSkip callback
//       showSkipButton: true,
//       skipOrBackFlex: 0,
//       nextFlex: 0,
//       showBackButton: false,
//       back: const Icon(Icons.arrow_back),
//       skip: const Text('گذر کن',
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontFamily: 'yekanlight',
//           )),
//       next: const Icon(CupertinoIcons.right_chevron),
//       done: const Text('ادامه',
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontFamily: 'yekanlight',
//           )),
//       curve: Curves.fastLinearToSlowEaseIn,
//       controlsMargin: const EdgeInsets.all(20),
//       controlsPadding: kIsWeb
//           ? const EdgeInsets.all(12.0)
//           : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
//       dotsDecorator: const DotsDecorator(
//         size: Size(10.0, 10.0),
//         color: Color(0xFFBDBDBD),
//         activeSize: Size(22.0, 10.0),
//         activeShape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(25.0)),
//         ),
//       ),
//       dotsContainerDecorator: const ShapeDecoration(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(8.0)),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:developer';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:intro_slider/intro_slider.dart';
// import 'package:sebghat_app/view/LogInpage.dart';

// class MyWidget<T extends StatefulWidget> extends State<T> {
//   List<ContentConfig> listContentConfig = [];

//   @override
//   void initState() {
//     super.initState();

//     listContentConfig.add(
//       const ContentConfig(
//         title: "ERASER",
//         description:
//             "Allow miles wound place the leave had. To sitting subject no improve studied limited",
//         pathImage: "images/photo_eraser.png",
//         backgroundColor: Color(0xfff5a623),
//       ),
//     );
//     listContentConfig.add(
//       const ContentConfig(
//         title: "PENCIL",
//         description:
//             "Ye indulgence unreserved connection alteration appearance",
//         pathImage: "images/photo_pencil.png",
//         backgroundColor: Color(0xff203152),
//       ),
//     );
//     listContentConfig.add(
//       const ContentConfig(
//         title: "RULER",
//         description:
//             "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
//         pathImage: "images/photo_ruler.png",
//         backgroundColor: Color(0xff9932CC),
//       ),
//     );
//   }

//   void onDonePress() {
//     log("End of slides");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IntroSlider(
//       key: UniqueKey(),
//       listContentConfig: listContentConfig,
//       onDonePress: () {
//         Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => LogInPage(),
//             ));
//       },
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:flutter_onboard/flutter_onboard.dart';
// import 'package:sebghat_app/view/LogInpage.dart';

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   final PageController _pageController = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: OnBoard(
//         pageController: _pageController,
//         // Either Provide onSkip Callback or skipButton Widget to handle skip state
//         onSkip: () {
//           Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => LogInPage(),
//               ));
//         },
//         // Either Provide onDone Callback or nextButton Widget to handle done state
//         onDone: () {
//           Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => LogInPage(),
//               ));
//         },
//         onBoardData: onBoardData,
//         titleStyles: const TextStyle(
//           color: Colors.deepOrange,
//           fontSize: 18,
//           fontWeight: FontWeight.w900,
//           letterSpacing: 0.15,
//         ),
//         descriptionStyles: TextStyle(
//           fontSize: 16,
//           color: Colors.brown.shade300,
//         ),
//         pageIndicatorStyle: const PageIndicatorStyle(
//           width: 100,
//           inactiveColor: Colors.deepOrangeAccent,
//           activeColor: Color.fromARGB(255, 227, 98, 12),
//           inactiveSize: Size(8, 8),
//           activeSize: Size(12, 12),
//         ),
//         // Either Provide onSkip Callback or skipButton Widget to handle skip state
//         skipButton: TextButton(
//           onPressed: () {
//             Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => LogInPage(),
//                 ));
//           },
//           child: const Text(
//             "Skip",
//             style: TextStyle(color: Colors.deepOrangeAccent),
//           ),
//         ),
//         // Either Provide onDone Callback or nextButton Widget to handle done state
//         nextButton: OnBoardConsumer(
//           builder: (context, ref, child) {
//             final state = ref.watch(onBoardStateProvider);
//             return InkWell(
//               onTap: () => _onNextTap(state),
//               child: Container(
//                 width: 230,
//                 height: 50,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   gradient: const LinearGradient(
//                     colors: [
//                       Colors.redAccent,
//                       Color.fromARGB(255, 232, 130, 14)
//                     ],
//                   ),
//                 ),
//                 child: Text(
//                   state.isLastPage ? "Done" : "Next",
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   void _onNextTap(OnBoardState onBoardState) {
//     if (!onBoardState.isLastPage) {
//       _pageController.animateToPage(
//         onBoardState.page + 1,
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeInOutSine,
//       );
//     } else {
//       //print("nextButton pressed");
//     }
//   }
// }

// final List<OnBoardModel> onBoardData = [
//   const OnBoardModel(
//     title: "Set your own goals and get better",
//     description: "Goal support your motivation and inspire you to work harder",
//     imgUrl: "assets/images/weight.png",
//   ),
//   const OnBoardModel(
//     title: "Track your progress with statistics",
//     description:
//         "Analyse personal result with detailed chart and numerical values",
//     imgUrl: 'assets/images/graph.png',
//   ),
//   const OnBoardModel(
//     title: "Create photo comparision and share your results",
//     description:
//         "Take before and after photos to visualize progress and get the shape that you dream about",
//     imgUrl: 'assets/images/phone.png',
//   ),
// ];
