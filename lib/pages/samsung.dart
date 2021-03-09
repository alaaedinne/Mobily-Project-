import 'package:flutter/material.dart';

class Samsung extends StatefulWidget {
  @override
  _SamsungState createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("سامسونغ"),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                Container(
                  height: 100,
                  child: Card(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset(
                              "images/category/ip.jpg",
                              fit: BoxFit.cover,
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                alignment: Alignment.topRight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "المواصفات",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "الكاميرا : 5 ميغابيكسل",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    )
                                  ],
                                )))
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
