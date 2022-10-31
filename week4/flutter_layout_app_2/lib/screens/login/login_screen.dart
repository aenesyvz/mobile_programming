import 'package:flutter/material.dart';
import 'package:flutter_layout_app_2/screens/login/components/body.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Body(),
    );
  }
}