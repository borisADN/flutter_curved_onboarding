import 'package:application/curved_splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Baloo',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CurvedSplashScreen(
        key: UniqueKey(),
        screensLength: 3,
        screenBuilder: (index) {
          return SplashContent(
            key: UniqueKey(),
            title: splashContent[index]["title"]!,
            image: splashContent[index]["image"]!,
            text: splashContent[index]["text"]!,
          );
        },
        onSkipButton: () {},
        firstGradiantColor: Color(0xff62cbe5),
        secondGradiantColor: Colors.lightBlueAccent.withOpacity(0.9),
        backText: 'Back',
        skipText: 'Skip',
        forwardColor: Colors.red,
        forwardIconColor: Colors.white,
        textColor: Colors.white.withOpacity(0.85),
        backgroundColor: Colors.white,
        bottomSheetColor: Color(0xff62cbe5),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  final String title;
  final String text;
  final String image;

  const SplashContent({
    required Key key,
    required this.title,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          SizedBox(height: 200, child: Image.asset(image)),
          SizedBox(height: 60),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 19),
          ),
        ],
      ),
    );
  }
}

final splashContent = [
  {
    "title": "Start Learning",
    "text":
        "Start learning now by using this app, Get your choosen course and start the journey.",
    "image": "assets/images/1.png",
  },
  {
    "title": "Explore Courses",
    "text": "Choose which course is suitable for you to enroll in.",
    "image": "assets/images/2.png",
  },
  {
    "title": "At Any time.",
    "text": "Your courses is available at any time you want. Join us now !",
    "image": "assets/images/3.png",
  },
];
