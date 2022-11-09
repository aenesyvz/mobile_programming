import 'package:adaptive_and_responsive_layout_1/detailPage.dart';
import 'package:adaptive_and_responsive_layout_1/detailWidget.dart';
import 'package:adaptive_and_responsive_layout_1/listWidget.dart';
import 'package:adaptive_and_responsive_layout_1/models/city.dart';
import 'package:flutter/material.dart';


class MasterDetailPage extends StatefulWidget {
  const MasterDetailPage({super.key});

  @override
  _MasterDetailPageState createState() => _MasterDetailPageState();
}

class _MasterDetailPageState extends State<MasterDetailPage> {
  var selectedValue = 0;
  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: oritentationBuilder(),
    );
  }

  OrientationBuilder oritentationBuilder() {
    return OrientationBuilder(builder: (context, orientation) {

      if (MediaQuery.of(context).size.width > 600) {
        isLargeScreen = true;
      } else {
        isLargeScreen = false;
      }

      return Row(children: <Widget>[
        Expanded(
          child: ListWidget(cities.length, (value) {
            if (isLargeScreen) {
              selectedValue = value;
              setState(() {});
            } else {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailPage(value);
                },
              ));
            }
          }),
        ),
        isLargeScreen ? Expanded(child: DetailWidget(selectedValue)) : Container(),
      ]);
    });
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.red,
      leading: const Icon(Icons.menu,size: 36,),
      title: const Text("Weather Forecast",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
    );
  }
}