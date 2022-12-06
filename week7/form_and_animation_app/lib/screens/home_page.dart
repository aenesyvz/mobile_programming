

import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String userName;
  final String password;
  const HomePage({super.key,required this.userName,required this.password});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  late FlipCardController controller;
  bool isFront = true;
  double verticalDrag = 180;
  
  @override
  void initState() {
    controller = FlipCardController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(onTap: () => Navigator.pop(context),child: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: FlipCard(
            
            direction: FlipDirection.HORIZONTAL,
            controller: controller,
            back: Container(
              width: 350,
              height: 350,
              color:Colors.amber,
              child: Center(child: Text("AEY37",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 48),)),
            ),
            front: Container(
              width: 350,
              height: 350,
              color: Colors.red,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User Name : ${widget.userName}",style: const TextStyle(color: Colors.white,fontSize: 30),),
                    Text("Password  : ${widget.password}",style: const TextStyle(color: Colors.white,fontSize: 30),),
                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }

}