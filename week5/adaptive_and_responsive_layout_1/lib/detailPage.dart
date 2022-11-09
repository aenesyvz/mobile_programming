import 'package:adaptive_and_responsive_layout_1/detailWidget.dart';
import 'package:adaptive_and_responsive_layout_1/models/city.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  final int data;

  DetailPage(this.data);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(cities[widget.data].name),
      ),
      body: DetailWidget(widget.data),
    );
  }
}