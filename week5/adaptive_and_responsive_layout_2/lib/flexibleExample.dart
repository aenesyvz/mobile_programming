import 'package:flutter/material.dart';

class FlexibleExample extends StatefulWidget {
  @override
  _FlexibleExampleState createState() => _FlexibleExampleState();
}

class _FlexibleExampleState extends State<FlexibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                buildExpanded(),
                buildFlexible(),
              ],
            ),
            Row(
              children: <Widget>[
                buildExpanded(),
                buildExpanded(),
              ],
            ),
            Row(
              children: <Widget>[
                buildFlexible(),
                buildFlexible(),
              ],
            ),
            Row(
              children: [
                Expanded(child: Image.asset("assets/images/gs.jfif")),
                Flexible(child: Image.asset("assets/images/user1.jpg")),
              ],
            ),
            Row(
              children: [
                Flexible(child: Image.asset("assets/images/user2.jpg")),
                Flexible(child: Image.asset("assets/images/gs.jfif")),
              ],
            ),
            Row(
           
              children: [
                Expanded(child: Image.asset("assets/images/user2.jpg")),
                Expanded(flex: 1,child: Image.asset("assets/images/user4.jpg",fit: BoxFit.cover)),
              ],
            ),
            Row(
              children: [
                Flexible(child: Image.asset("assets/images/user2.jpg")),
                Expanded(child: Image.asset("assets/images/user1.jpg",fit: BoxFit.cover)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFlexible() {
    return Flexible(
      child: Container(
        color: Colors.amber,
        child: const Text(
          "Flexible",
    
        ),
      ),
    );
  }

  Widget buildExpanded() {
    return Expanded(
      child: Container(
        color: Colors.red,
        child: const Text(
          "Expanded",
        ),
      ),
    );
  }
}