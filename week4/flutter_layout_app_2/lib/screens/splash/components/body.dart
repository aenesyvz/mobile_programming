import 'package:flutter/material.dart';
import 'package:flutter_layout_app_2/screens/login/login_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    super.initState();
     Future.delayed(const Duration(seconds: 5)).then((value) => {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()))
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo.png",width: 75,height: 75,fit: BoxFit.cover,),
          const Text(
                "TeamTricks",
                style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
              ),
        ],
      ),
    );
  }
}