import 'package:adaptive_and_responsive_layout_1/onBoardingDemo/onBoardingScreen.dart';
import 'package:adaptive_and_responsive_layout_1/orientation_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
      title: 'Flutter Demo',
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
