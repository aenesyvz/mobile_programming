import 'package:flutter/material.dart';
import 'package:flutter_layout_app_2/contants.dart';
import 'package:flutter_layout_app_2/screens/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      backgroundColor: kPrimaryColor,
    );
  }
}