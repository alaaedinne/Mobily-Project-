import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:fl_test/component/mydrawer.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MOBILY"),
          backgroundColor: Colors.blue,
          /*actions: [
            IconButton(icon: Icon(Icons.shopping_basket), onPressed: () {})
          ],*/
          centerTitle: true,
          elevation: 8,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ], //toujour avant le titre contrere de l acation
          brightness: Brightness.dark, //batterie wifi et tt dark or light
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Carousel(
                images: [
                  Image.asset(
                    'images/slider/img02.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/slider/img01.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/slider/img02.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/category/1.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/category/ip.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/category/mi.png',
                    fit: BoxFit.cover,
                  ),
                ],
                dotBgColor: Colors.indigo[900].withOpacity(0.5),
                overlayShadow: true,
                overlayShadowColors: Colors.blue,
                overlayShadowSize: 0.2,
                dotIncreasedColor: Colors.blueAccent[700],
              ),
            ),
            // End Parti 01
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "العلامة",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.w600),
              ),
            ),
            // start cat ///////////////
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        'images/category/smg.png',
                        width: 80,
                        height: 100,
                      ),
                      subtitle: Text(
                        "Samsung",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        'images/category/1.png',
                        width: 80,
                        height: 100,
                      ),
                      subtitle: Text(
                        "One pluss",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        'images/category/ip.jpg',
                        width: 80,
                        height: 100,
                      ),
                      subtitle: Text(
                        "Appel",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        'images/category/oppo.png',
                        width: 80,
                        height: 100,
                      ),
                      subtitle: Text(
                        "oppo",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        'images/category/mi.png',
                        width: 80,
                        height: 100,
                      ),
                      subtitle: Text(
                        "Xshaomi",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        'images/category/cn.jpg',
                        width: 80,
                        height: 100,
                      ),
                      subtitle: Text(
                        "Condor",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            //end cat /////////////////////
            Container(
              padding: EdgeInsets.all(5),
              child: Text("اخر التحديثات",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            ),
            //start latset product ////////////
            Container(
              height: 600,
              //padding: EdgeInsets.all(10),
              child: GridView(
                //padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  InkWell(
                    child: GridTile(
                      child: Image.asset("images/product/1.jpg"),
                      footer: Container(
                        height: 30,
                        color: Colors.black12.withOpacity(0.5),
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "Samsung A6 plus",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    onTap: () {
                      print("object");
                    },
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset(
                        "images/product/2.jpg",
                        fit: BoxFit.cover,
                      ),
                      footer: Container(
                        height: 30,
                        color: Colors.black12.withOpacity(0.5),
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "OPPO F93",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset("images/product/3.jpg"),
                      footer: Container(
                        height: 30,
                        color: Colors.black12.withOpacity(0.5),
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "Poco X3",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            )
            //End latset product ////////////
          ],
        ),
      ),
    );
  }
}
