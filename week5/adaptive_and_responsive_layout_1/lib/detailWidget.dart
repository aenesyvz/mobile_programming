import 'package:adaptive_and_responsive_layout_1/models/city.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatefulWidget {

  final int data;

  DetailWidget(this.data);

  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return CityViewWeather(widget: widget);
  }
}

class CityViewWeather extends StatelessWidget {
  const CityViewWeather({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailWidget widget;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          dailyWeather(),
          customDivider(),
          weekWeather(),
          customElevatedButton(),
          customDivider(),
          weatherDetails()
        ],
      ),
    );
  }

  Column weatherDetails() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Weather Details",style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text("Temp",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      Text("${cities[widget.data].weatherDetails.apperentTemp}°C",style: const TextStyle(color: Colors.black,fontSize: 24)),
                    ],
                  ),
                   Column(
                    children: [
                      const Text("Humidity",style: TextStyle(color: Colors.grey,fontSize: 16)),
                      Text(cities[widget.data].weatherDetails.humidity,style: const TextStyle(color: Colors.black,fontSize: 24)),
                    ],
                  ),
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text("ESE wind",style: TextStyle(color: Colors.grey,fontSize: 16)),
                      Text(cities[widget.data].weatherDetails.eseWind,style: const TextStyle(color: Colors.black,fontSize: 24)),
                    ],
                  ),
                   Column(
                    children: [
                      const Text("UV",style: TextStyle(color: Colors.grey,fontSize: 16)),
                      Text(cities[widget.data].weatherDetails.uv,style: const TextStyle(color: Colors.black,fontSize: 24)),
                    ],
                  ),
                ],
            ),
             ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text("Visibilty",style: TextStyle(color: Colors.grey,fontSize: 16)),
                      Text(cities[widget.data].weatherDetails.visibility,style: const TextStyle(color: Colors.black,fontSize: 24)),
                    ],
                  ),
                   Column(
                    children: [
                      const Text("Air pressure",style: TextStyle(color: Colors.grey,fontSize: 16)),
                      Text(cities[widget.data].weatherDetails.airPressure,style: const TextStyle(color: Colors.black,fontSize: 24)),
                    ],
                  ),
                ],
            ),
             )
          ],
        );
  }

  ElevatedButton customElevatedButton() {
    return ElevatedButton(
          onPressed: () {}, 
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red,minimumSize: const Size(300,40)),
          child: const Text("15 day weather forecat",style: TextStyle(color: Colors.white,fontSize: 16),)
        );
  }

  Container weekWeather() {
    return Container(
      height: 250,
      child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: cities[widget.data].dailyWeather.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(cities[widget.data].dailyWeather[index].time,style: const TextStyle(color: Colors.black,fontSize: 19),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right :10.0),
                          child: Icon(cities[widget.data].dailyWeather[index].iconData,color: Colors.red,),
                        ),
                        Text(cities[widget.data].dailyWeather[index].forcest,style:  TextStyle(color: Colors.grey.shade800,fontSize: 16)),
                         Padding(
                           padding: const EdgeInsets.only(left:20.0),
                           child: Text("${cities[widget.data].dailyWeather[index].maxDegree} / ${cities[widget.data].dailyWeather[index].minDegree}°C",style:  TextStyle(color: Colors.grey.shade800,fontSize: 16)),
                         )
                      ],
                    ),
                    
                   
                  ],
                ),
              );
            }),
          ),
    );
  }

  Padding customDivider() {
    return const Padding(
          padding: EdgeInsets.symmetric(horizontal:20.0,vertical: 8),
          child: Divider(
            thickness: 1,color: Colors.grey,
          ),
        );
  }

  Column dailyWeather() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(cities[widget.data].snapDegree,style: const TextStyle(color: Colors.black,fontSize: 72,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("°C",style:TextStyle(color: Colors.black,fontSize: 36)),
                        Text(cities[widget.data].forcest,style:const TextStyle(color: Colors.black,fontSize: 24))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(cities[widget.data].day,style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  Text("   ${cities[widget.data].maxDegree}°C / ${cities[widget.data].minDegree}°C",style: const TextStyle(color: Colors.black,fontSize: 18))
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cities[widget.data].timeWeathers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(cities[widget.data].timeWeathers[index].time,style: const TextStyle(color: Colors.black,fontSize: 16),),
                        Icon(cities[widget.data].timeWeathers[index].iconData,color: Colors.red,size: 30,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:10.0),
                          child: Text("${cities[widget.data].timeWeathers[index].degree} °C",style: const TextStyle(color: Colors.black,fontSize: 16)),
                        ),
                      ],
                    ),
                  );
                  
                },
              ),
            )
          ],
        );
  }
}