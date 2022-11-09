import 'package:flutter/material.dart';

class OrientationDemo extends StatefulWidget {
  const OrientationDemo({super.key});

  @override
  State<OrientationDemo> createState() => _OrientationDemoState();
}

class _OrientationDemoState extends State<OrientationDemo> {
  var name="Al";
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [
          Icon(
            Icons.star_border_outlined,
            color: Colors.white,
          ),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait 
              ? _buildVerticalLayout()
              : _buildHorizontalLayout();
        },
      ),
    );
  }

  Widget _buildVerticalLayout() {
    return Center(
      child: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle,
              color: Colors.purple,
              size: 100.0,
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Ertuğrul Kürşat",
                style: TextStyle(color: Colors.purple, fontSize: 32.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customButton(Icons.call, "Call"),
                customButton(Icons.message_outlined, "Message"),
                customButton(Icons.video_camera_front_outlined, "Video"),
              ],
            ),
          ),
          customDivider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.call,
                      color: Colors.purple,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "+90 537 137 37 37",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Mobile | Turkey",
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Icon(
                  Icons.message,
                  color: Colors.purple,
                  size: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.email_outlined,
                      color: Colors.purple,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "ertgrlkrst37@gmail.com",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Home",
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Icon(
                  Icons.message,
                  color: Colors.purple,
                  size: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Container(
                          color: Colors.green,
                          child: const Icon(
                            Icons.whatsapp_rounded,
                            color: Colors.white,
                          )),
                      const Text(
                        "Whatsap",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Message +90 571 175 17 71",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Voice call +90 571 175 17 71",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Video call +90 571 175 17 71",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
                const Text("Google",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          customDivider(),
          callLogs()
        ],
      ),
    );
  }

  Padding callLogs() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Call logs",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("View All",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Column(
                children: [
                  recentCall("11/04/22 20:46", " +90 568 584 85 95",
                      "Incoming 6 min 23 s"),
                  recentCall("10/04/22 14:36", " +90 568 584 85 95",
                      "Incoming 5 min 09 s"),
                  recentCall("8/04/22 20:46", " +90 568 584 85 95",
                      "Incoming 3 min 34 s"),
                ],
              )
            ],
          ),
        );
  }

  Padding customDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    );
  }

  Column customButton(IconData iconData, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            onPressed: () {},
            child: Center(
                child: Icon(
              iconData,
              color: Colors.white,
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(color: Colors.purple),
          ),
        )
      ],
    );
  }

  Padding recentCall(String callTime, String telefonNumber, String timer) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(callTime,
                    style: const TextStyle(color: Colors.black, fontSize: 20)),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.purple,
                    size: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(telefonNumber,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ],
              )
            ],
          ),
          Text(timer, style: const TextStyle(color: Colors.black, fontSize: 16))
        ],
      ),
    );
  }

  Widget _buildHorizontalLayout() {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.purple,
                    size: 100.0,
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Ertuğrul Kürşat",
                      style: TextStyle(color: Colors.purple, fontSize: 32.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customButton(Icons.call, "Call"),
                      customButton(Icons.message_outlined, "Message"),
                      customButton(Icons.video_camera_front_outlined, "Video"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.call,
                            color: Colors.purple,
                            size: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "+90 571 175 17 71",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Mobile | Turkey",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14.0),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.message,
                        color: Colors.purple,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.email_outlined,
                            color: Colors.purple,
                            size: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "ertgrlkrst37@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14.0),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.message,
                        color: Colors.purple,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Container(
                                color: Colors.green,
                                child: const Icon(
                                  Icons.whatsapp_rounded,
                                  color: Colors.white,
                                )),
                            const Text(
                              "Whatsap",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Message +90 571 175 17 71",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Voice call +90 571 175 17 71",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Video call +90 571 175 17 71",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      const Text("Google",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                customDivider(),
                Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Call logs",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("View All",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Column(
                children: [
                  recentCall("11/04/22 20:46", " +90 568 584 85 95",
                      "Incoming 6 min 23 s"),
                  recentCall("10/04/22 14:36", " +90 568 584 85 95",
                      "Incoming 5 min 09 s"),
                  recentCall("8/04/22 20:46", " +90 568 584 85 95",
                      "Incoming 3 min 34 s"),
                ],
              )
            ],
          ),
        )
              ],
            ),
          ),
        ],
      ),
    );















  //   ///////////////////////////////////
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     appBar: AppBar(
  //       backgroundColor: Colors.purple,
  //       leading: const Icon(Icons.arrow_back_ios),
  //       actions: const [
  //         Icon(
  //           Icons.star_border_outlined,
  //           color: Colors.white,
  //         ),
  //         Icon(Icons.more_vert, color: Colors.white),
  //       ],
  //     ),
  //     body: OrientationBuilder(
  //       builder: (context, orientation) {
  //         return orientation == Orientation.portrait 
  //             ? _buildVerticalLayout()
  //             : _buildHorizontalLayout();
  //       },
  //     ),
  //   );
  // }

  // Widget _buildVerticalLayout() {
  //   return Center(
  //     child: ListView(
  //       children: <Widget>[
  //         const Padding(
  //           padding: EdgeInsets.all(8.0),
  //           child: Icon(
  //             Icons.account_circle,
  //             color: Colors.purple,
  //             size: 100.0,
  //           ),
  //         ),
  //         const Align(
  //           alignment: Alignment.center,
  //           child: Padding(
  //             padding: EdgeInsets.all(8.0),
  //             child: Text(
  //               "Alper Enes Yavuz",
  //               style: TextStyle(color: Colors.purple, fontSize: 32.0),
  //             ),
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               customButton(Icons.call, "Call"),
  //               customButton(Icons.message_outlined, "Message"),
  //               customButton(Icons.video_camera_front_outlined, "Video"),
  //             ],
  //           ),
  //         ),
  //         customDivider(),
  //         Padding(
  //           padding: const EdgeInsets.all(20.0),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               Row(
  //                 children: [
  //                   const Icon(
  //                     Icons.call,
  //                     color: Colors.purple,
  //                     size: 30,
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: const [
  //                         Text(
  //                           "+90 537 137 37 37",
  //                           style: TextStyle(
  //                               color: Colors.black,
  //                               fontSize: 18.0,
  //                               fontWeight: FontWeight.bold),
  //                         ),
  //                         Text(
  //                           "Mobile | Turkey",
  //                           style:
  //                               TextStyle(color: Colors.black, fontSize: 14.0),
  //                         )
  //                       ],
  //                     ),
  //                   )
  //                 ],
  //               ),
  //               const Icon(
  //                 Icons.message,
  //                 color: Colors.purple,
  //                 size: 30,
  //               ),
  //             ],
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.all(20.0),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Row(
  //                 children: [
  //                   const Icon(
  //                     Icons.email_outlined,
  //                     color: Colors.purple,
  //                     size: 30,
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: const [
  //                         Text(
  //                           "alperenesyavuz37@gmail.com",
  //                           style: TextStyle(
  //                               color: Colors.black,
  //                               fontSize: 18.0,
  //                               fontWeight: FontWeight.bold),
  //                         ),
  //                         Text(
  //                           "Home",
  //                           style:
  //                               TextStyle(color: Colors.black, fontSize: 14.0),
  //                         )
  //                       ],
  //                     ),
  //                   )
  //                 ],
  //               ),
  //               const Icon(
  //                 Icons.message,
  //                 color: Colors.purple,
  //                 size: 30,
  //               ),
  //             ],
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(vertical: 8.0),
  //                 child: Row(
  //                   children: [
  //                     Container(
  //                         color: Colors.green,
  //                         child: const Icon(
  //                           Icons.whatsapp_rounded,
  //                           color: Colors.white,
  //                         )),
  //                     const Text(
  //                       "Whatsap",
  //                       style: TextStyle(
  //                           color: Colors.black,
  //                           fontSize: 20,
  //                           fontWeight: FontWeight.w300),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.all(8.0),
  //                 child: Text("Message +90 551 159 34 34",
  //                     style: TextStyle(color: Colors.black, fontSize: 16)),
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.all(8.0),
  //                 child: Text("Voice call +90 551 159 34 34",
  //                     style: TextStyle(color: Colors.black, fontSize: 16)),
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.all(8.0),
  //                 child: Text("Video call +90 551 159 34 34",
  //                     style: TextStyle(color: Colors.black, fontSize: 16)),
  //               ),
  //               const Text("Google",
  //                   style: TextStyle(
  //                       color: Colors.black,
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold)),
  //             ],
  //           ),
  //         ),
  //         customDivider(),
  //         callLogs()
  //       ],
  //     ),
  //   );
  // }

  // Padding callLogs() {
  //   return Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //         child: Column(
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.symmetric(vertical: 8.0),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: const [
  //                   Text(
  //                     "Call logs",
  //                     style: TextStyle(
  //                         color: Colors.black,
  //                         fontSize: 20,
  //                         fontWeight: FontWeight.bold),
  //                   ),
  //                   Text("View All",
  //                       style: TextStyle(
  //                           color: Colors.purple,
  //                           fontSize: 20,
  //                           fontWeight: FontWeight.w600)),
  //                 ],
  //               ),
  //             ),
  //             Column(
  //               children: [
  //                 recentCall("11/04/22 20:46", " +90 568 584 85 95",
  //                     "Incoming 6 min 23 s"),
  //                 recentCall("10/04/22 14:36", " +90 568 584 85 95",
  //                     "Incoming 5 min 09 s"),
  //                 recentCall("8/04/22 20:46", " +90 568 584 85 95",
  //                     "Incoming 3 min 34 s"),
  //               ],
  //             )
  //           ],
  //         ),
  //       );
  // }

  // Padding customDivider() {
  //   return const Padding(
  //     padding: EdgeInsets.symmetric(horizontal: 20.0),
  //     child: Divider(
  //       color: Colors.grey,
  //       thickness: 1,
  //     ),
  //   );
  // }

  // Column customButton(IconData iconData, String title) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       SizedBox(
  //         height: 50,
  //         width: 50,
  //         child: ElevatedButton(
  //           style: ElevatedButton.styleFrom(
  //               backgroundColor: Colors.purple,
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(50))),
  //           onPressed: () {},
  //           child: Center(
  //               child: Icon(
  //             iconData,
  //             color: Colors.white,
  //           )),
  //         ),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Text(
  //           title,
  //           style: const TextStyle(color: Colors.purple),
  //         ),
  //       )
  //     ],
  //   );
  // }

  // Padding recentCall(String callTime, String telefonNumber, String timer) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 8.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Text(callTime,
  //                   style: const TextStyle(color: Colors.black, fontSize: 20)),
  //             ),
  //             Row(
  //               children: [
  //                 const Icon(
  //                   Icons.arrow_back,
  //                   color: Colors.purple,
  //                   size: 20,
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.only(left: 8.0),
  //                   child: Text(telefonNumber,
  //                       style:
  //                           const TextStyle(color: Colors.black, fontSize: 16)),
  //                 ),
  //               ],
  //             )
  //           ],
  //         ),
  //         Text(timer, style: const TextStyle(color: Colors.black, fontSize: 16))
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildHorizontalLayout() {
  //   return Center(
  //     child: Row(
  //       children: <Widget>[
  //         Expanded(
  //           child: Column(
  //             children: <Widget>[
  //               const Padding(
  //                 padding: EdgeInsets.all(8.0),
  //                 child: Icon(
  //                   Icons.account_circle,
  //                   color: Colors.red,
  //                   size: 100.0,
  //                 ),
  //               ),
  //               const Align(
  //                 alignment: Alignment.center,
  //                 child: Padding(
  //                   padding: EdgeInsets.all(8.0),
  //                   child: Text(
  //                     "Alper Enes Yavuz",
  //                     style: TextStyle(color: Colors.purple, fontSize: 32.0),
  //                   ),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     customButton(Icons.call, "Call"),
  //                     customButton(Icons.message_outlined, "Message"),
  //                     customButton(Icons.video_camera_front_outlined, "Video"),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         Expanded(
  //           child: ListView(
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.all(20.0),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     Row(
  //                       children: [
  //                         const Icon(
  //                           Icons.call,
  //                           color: Colors.purple,
  //                           size: 30,
  //                         ),
  //                         Padding(
  //                           padding:
  //                               const EdgeInsets.symmetric(horizontal: 8.0),
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: const [
  //                               Text(
  //                                 "+90 551 159 34 34",
  //                                 style: TextStyle(
  //                                     color: Colors.black,
  //                                     fontSize: 18.0,
  //                                     fontWeight: FontWeight.bold),
  //                               ),
  //                               Text(
  //                                 "Mobile | Turkey",
  //                                 style: TextStyle(
  //                                     color: Colors.black, fontSize: 14.0),
  //                               )
  //                             ],
  //                           ),
  //                         )
  //                       ],
  //                     ),
  //                     const Icon(
  //                       Icons.message,
  //                       color: Colors.purple,
  //                       size: 30,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.all(20.0),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Row(
  //                       children: [
  //                         const Icon(
  //                           Icons.email_outlined,
  //                           color: Colors.purple,
  //                           size: 30,
  //                         ),
  //                         Padding(
  //                           padding:
  //                               const EdgeInsets.symmetric(horizontal: 8.0),
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: const [
  //                               Text(
  //                                 "alperenesyavuz37@gmail.com",
  //                                 style: TextStyle(
  //                                     color: Colors.black,
  //                                     fontSize: 18.0,
  //                                     fontWeight: FontWeight.bold),
  //                               ),
  //                               Text(
  //                                 "Home",
  //                                 style: TextStyle(
  //                                     color: Colors.black, fontSize: 14.0),
  //                               )
  //                             ],
  //                           ),
  //                         )
  //                       ],
  //                     ),
  //                     const Icon(
  //                       Icons.message,
  //                       color: Colors.purple,
  //                       size: 30,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: [
  //                     Padding(
  //                       padding: const EdgeInsets.symmetric(vertical: 8.0),
  //                       child: Row(
  //                         children: [
  //                           Container(
  //                               color: Colors.green,
  //                               child: const Icon(
  //                                 Icons.whatsapp_rounded,
  //                                 color: Colors.white,
  //                               )),
  //                           const Text(
  //                             "Whatsap",
  //                             style: TextStyle(
  //                                 color: Colors.black,
  //                                 fontSize: 20,
  //                                 fontWeight: FontWeight.w300),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     const Padding(
  //                       padding: EdgeInsets.all(8.0),
  //                       child: Text("Message +90 551 159 34 34",
  //                           style:
  //                               TextStyle(color: Colors.black, fontSize: 16)),
  //                     ),
  //                     const Padding(
  //                       padding: EdgeInsets.all(8.0),
  //                       child: Text("Voice call +90 551 159 34 34",
  //                           style:
  //                               TextStyle(color: Colors.black, fontSize: 16)),
  //                     ),
  //                     const Padding(
  //                       padding: EdgeInsets.all(8.0),
  //                       child: Text("Video call +90 551 159 34 34",
  //                           style:
  //                               TextStyle(color: Colors.black, fontSize: 16)),
  //                     ),
  //                     const Text("Google",
  //                         style: TextStyle(
  //                             color: Colors.black,
  //                             fontSize: 20,
  //                             fontWeight: FontWeight.bold)),
  //                   ],
  //                 ),
  //               ),
  //               customDivider(),
  //               callLogs()
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  }
}
