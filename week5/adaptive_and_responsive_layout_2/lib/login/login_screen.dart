
import 'package:adaptive_and_responsive_layout_2/login/body.dart';
import 'package:adaptive_and_responsive_layout_2/login/theme.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading:  Icon(Icons.arrow_back_ios_new,color:Colors.grey.shade700),
          title:  Text("Sign In",style: TextStyle(color: Colors.grey.shade700),),
        ),
        body: Body(),
      ),
    );
  }
}