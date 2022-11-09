import 'package:adaptive_and_responsive_layout_2/fittedBoxExample.dart';
import 'package:adaptive_and_responsive_layout_2/flexibleExample.dart';
import 'package:adaptive_and_responsive_layout_2/login/login_screen.dart';
import 'package:adaptive_and_responsive_layout_2/mediaQueryExample.dart';
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
      home: SignInScreen(),
     
    );

    
  }
}
