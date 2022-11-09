import 'package:adaptive_and_responsive_layout_1/models/city.dart';
import 'package:flutter/material.dart';

typedef Null ItemSelectedCallback(int value);

class ListWidget extends StatefulWidget {
  final int count;
  final ItemSelectedCallback onItemSelected;

  ListWidget(
    this.count,
    this.onItemSelected,
  );

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.count,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
                 widget.onItemSelected(position);
                },
            // leading: Image.asset(emails[position].userImg),
            title: Text(cities[position].name,style: const TextStyle(color: Colors.black,fontSize: 20),),
            subtitle: Text(cities[position].forcest,style:  TextStyle(color: Colors.grey.shade800,fontSize: 16)),
            trailing: Wrap(
                          spacing: 12,
                          children: [
                              Icon(cities[position].iconforast,color: Colors.red,size: 30,),
                             Column(children: [
                             Text("${cities[position].minDegree}°C",style: const TextStyle(color: Colors.black,fontSize: 20),),
                              Text("${cities[position].maxDegree}°C",style: const TextStyle(color: Colors.black,fontSize: 20),),
                            ],),
                            
                           
                          ],
            ),
          ),
        );
      },
    );
  }
}






//Default

// child: Card(
//             child: InkWell(
//               onTap: () {
//                 widget.onItemSelected(position);
//               },
//               child: Row(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Text(position.toString(), style: const TextStyle(fontSize: 22.0),),
//                   ),
//                 ],
//               ),
//             ),
//           ),