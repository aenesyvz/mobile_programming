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
      home: Body(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            banner(context),
            titleSection(),
            buildButtonGroup(),
            textSection()
          ],
        ),
      ),
    );
  }

  Padding textSection() {
    return const Padding(
            padding: EdgeInsets.all(32),
            child:  Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
                softWrap: true,
            ),
          );
  }

  Image banner(BuildContext context) {
    return Image.asset(
                      "assets/images/lake.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: 240,
                      fit: BoxFit.cover,
                    );
  }

  Row buildButtonGroup() {
    return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customButton(Icons.call,"CALL"),
              customButton(Icons.near_me,"ROUTE"),
              customButton(Icons.share,"SHARE"),
            ],
          );
  }

  Column customButton(IconData icon,String title) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,color: Colors.blue,),
                Container(
                          margin: const EdgeInsets.only(top:8),
                          child: Text(title,style: const TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.w400),)
                        )
              ],
            );
  }

  Padding titleSection() {
    return Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                          Icons.star,
                          color:Colors.red[500],
                        ),
                    const Text("41"),
                  ],
                ),
              ],
            ),
    );
  }
}
