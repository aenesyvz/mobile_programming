import 'package:flutter/material.dart';

class FittedBoxExample extends StatefulWidget {
  @override
  _FittedBoxExampleState createState() => _FittedBoxExampleState();
}

class _FittedBoxExampleState extends State<FittedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: ListView(
          children:  <Widget>[
           
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: [
                  Image.asset("assets/images/t1.jfif"),
                  Image.asset("assets/images/t2.jfif"),
                  Image.asset("assets/images/t3.jfif"),
                  Image.asset("assets/images/k1.jfif"),
                  Image.asset("assets/images/k2.jfif"),
                ].map((e) => Container(height: 250,child: FittedBox(fit: BoxFit.cover,child: e,),)).toList(),
              ),
            ),
             Container(
              child: FittedBox(
                child: Text("Flutter is Awesome"),
              ),
            ),
            Container(
              child: FittedBox(
                child: Text("Flutter/Dart"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
  
                child: FittedBox(
                  child: Text("in flutter everything is a widget"),
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}