import 'package:flutter/material.dart';
import 'package:fl_test/component/mydrawer.dart';

class categories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("الأقسام"),
          centerTitle: true,
        ),
        drawer: MyDrawer(),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            /// start cat one ////////////////////////
            InkWell(
              child: Card(
                  color: Colors.blue.withOpacity(0.2),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset("images/category/mi.png"),
                      ),
                      Text(
                        "Xshoami",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )),
              onTap: () {},
            ),

            /// End cat one /////////////////////////////////
            ///
            /// Start cat 2 //////////////////////////////
            InkWell(
              child: Card(
                  color: Colors.blue.withOpacity(0.2),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset("images/category/1.png"),
                      ),
                      Text(
                        "One plus",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )),
              onTap: () {},
            ),

            /// End cat 2 /////////////////////////////////
            ///
            /// Start cat 3 //////////////////////////////
            InkWell(
              child: Card(
                  color: Colors.blue.withOpacity(0.2),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "images/category/smg.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Samsung",
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  )),
              onTap: () {
                Navigator.of(context).pushNamed("Samsung");
              },
            ),

            /// End cat 3 /////////////////////////////////
            ///
            /// Start cat 4 //////////////////////////////
            InkWell(
              child: Card(
                  child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      "images/category/ip.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Appel",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )),
              onTap: () {},
            ),

            /// End cat 4 /////////////////////////////////
            ///
            /// Start cat 5 //////////////////////////////
            InkWell(
              child: Card(
                  child: Column(
                children: [
                  Expanded(
                    child: Image.asset("images/category/oppo.png"),
                  ),
                  Text(
                    "Oppo",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )),
              onTap: () {},
            ),

            /// End cat 5 /////////////////////////////////
            ///
            /// Start cat 6//////////////////////////////
            InkWell(
              child: Card(
                  child: Column(
                children: [
                  Expanded(
                    child: Image.asset("images/category/cn.jpg"),
                  ),
                  Text(
                    "Condor",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )),
              onTap: () {},
            ),

            /// End cat 6/////////////////////////////////
          ],
        ),
      ),
    );
  }
}
