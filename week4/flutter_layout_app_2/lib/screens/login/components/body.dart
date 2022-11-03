import 'package:flutter/material.dart';
import 'package:flutter_layout_app_2/contants.dart';


class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          banner(context),
          loginForm()
        ],
      ),
    );
  }

  Padding loginForm() {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 64,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customTextFormField("Email"),
                const SizedBox(height: 20,),
                customTextFormField("Password"),
                const SizedBox(height: 25,),
                Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.grey.shade400,fontSize: 16),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                                onPressed: () {}, 
        
                                style: ElevatedButton.styleFrom(primary: kPrimaryColor,elevation: 8 ,shadowColor: kPrimaryColor.withOpacity(0.7),minimumSize: Size(400,40)),
                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                )
                              )
              ],
            ),
          );
  }

  TextFormField customTextFormField(String hintText) {
    return TextFormField(
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Colors.grey,
                      width: 1,
                    )
                  )
                ),
              );
  }

  Container banner(BuildContext context) {
    return Container(
            color: kPrimaryColor,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  Image.asset("assets/images/logo.png",width: 75,height: 75,fit: BoxFit.cover,),
                  const Text(
                        "TeamTricks",
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                      ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                        const Text(
                          "LOG IN",
                          style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "SIGN UP",
                          style: TextStyle(color: Colors.grey.shade300,fontSize: 16,fontWeight: FontWeight.w700),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }
}