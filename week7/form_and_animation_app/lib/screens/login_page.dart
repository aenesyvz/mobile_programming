import 'package:flutter/material.dart';

import 'package:form_and_animation_app/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String _userName = "";
  late String _password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.png'), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Container(),
              Container(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30,
                  )),
              Container(
                padding: const EdgeInsets.only(left: 35, top: 100),
                child: const Text(
                  'Welcome\nBack',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 35, right: 35),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardAppearance: Brightness.dark,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Lütfen boş bırakmayınız";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (value) => _userName = value,
                                onSaved: (newValue) => _userName = newValue!,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 24),
                                decoration: InputDecoration(
                                    labelStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                    labelText: "User Name",
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.purple)),
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.purple)),
                                    border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.black))),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              TextFormField(
                                keyboardAppearance: Brightness.dark,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    letterSpacing: 10),
                                obscureText: true,
                                onChanged: (value) {
                                  setState(() {
                                    _password = value;
                                  });
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Lütfen boş bırakmayın";
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (newValue) => _password = newValue!,
                                decoration: InputDecoration(
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.purple)),
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.purple)),
                                    labelText: "Password",
                                    labelStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                    border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Sign in',
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.purple,
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          if (_formKey.currentState!.validate()) {       
                                              Navigator.of(context).push(_createRoute());
                                              _formKey.currentState!.reset();
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.arrow_forward,
                                        )),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      // Navigator.pushNamed(context, 'register');
                                    },
                                    child: const Text(
                                      'Sign Up',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Color(0xff4c505b),
                                          fontSize: 18),
                                    ),
                                    style: const ButtonStyle(),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Forgot Password',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Color(0xff4c505b),
                                          fontSize: 18,
                                        ),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HomePage(
        userName: _userName,
        password: _password,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  TextFormField textInputPassword() {
    return TextFormField(
      onChanged: ((value) {}),
      validator: (value) {
        if (value!.isNotEmpty) {}
      },
      obscureText: true,
      keyboardAppearance: Brightness.dark,
      autofocus: true,
      autocorrect: true,
      onSaved: (newValue) => _password = newValue!,
      style: const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.purple, width: 3),
          )),
    );
  }

  TextFormField textInputUserName() {
    return TextFormField(
      onChanged: (value) {
        setState(() {
          _userName = value;
        });
      },
      validator: (value) {},
      onSaved: (newValue) => _userName = newValue!,
      keyboardAppearance: Brightness.dark,
      style: const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
          hintText: "User Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.purple, width: 3),
          )),
    );
  }
}
