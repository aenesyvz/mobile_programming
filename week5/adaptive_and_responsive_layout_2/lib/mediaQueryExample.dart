import 'package:adaptive_and_responsive_layout_2/models/email.dart';
import 'package:flutter/material.dart';

class MediaQueryExample extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MediaQueryExample> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      drawer: media.width < 600
          ? Drawer(
              child: Menu(),
            )
          : null,
      body: Row(
        children: <Widget>[
          media.width > 600 ? Flexible(flex: 1, child: Menu()) : Container(),
          Flexible(
              flex: 3,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.arrow_downward_sharp,
                                color: Colors.red,
                              ),
                              Text(
                                  "Touch a sender images to select that conversation",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
            
                          Row(
                            children: const [
                              Icon(
                                Icons.dangerous_outlined,
                                color: Colors.red,
                                size: 30,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: emails.length,
                      physics: ScrollPhysics(),
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                     FittedBox(child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(emails[index].userImage,fit: BoxFit.cover,height: 50,width: 50,))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(emails[index].title,style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(emails[index].subTitle,style: TextStyle(color:Colors.black,fontSize: 16),),
                                    ),
                                  ],
                                ),
                              ),

                                  ],
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    
                                    Text(emails[index].sendDate),
                                    GestureDetector(
                                      onTap: (() {
                                        setState(() {
                                          emails[index].isFav = !emails[index].isFav;
                                        });
                                      }),
                                      child: !emails[index].isFav ? const Icon(Icons.star_border,color: Colors.red,):const Icon(Icons.star,color: Colors.red,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 150.0,
          color: Colors.white,
          child: const Center(
              child: Text(
            "AEY37",
            style: TextStyle(
                color: Colors.red, fontSize: 36, fontWeight: FontWeight.bold),
          )),
        ),
        ListTile(
          leading: const Icon(
            Icons.star,
            color: Colors.red,
          ),
          title: const Text("Starred"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.access_time_rounded,
            color: Colors.red,
          ),
          title: const Text("Snoozed"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.label_important_outline,
            color: Colors.red,
          ),
          title: const Text("Important"),
          trailing: const Text("5"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.send,
            color: Colors.red,
          ),
          title: const Text("Sent"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.schedule_send,
            color: Colors.red,
          ),
          title: const Text("Scheduled"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.outbox,
            color: Colors.red,
          ),
          title: const Text("Outbox"),
          trailing: const Text("4"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.drafts_outlined,
            color: Colors.red,
          ),
          title: const Text("Drafts"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.schedule_send,
            color: Colors.red,
          ),
          title: const Text("Scheduled"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.mark_email_read_rounded,
            color: Colors.red,
          ),
          title: const Text("Outbox"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.dangerous_outlined,
            color: Colors.red,
          ),
          title: const Text("Spam"),
          onTap: () {},
        ),
      ],
    );
  }
}
