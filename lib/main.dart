import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/category.dart';
import 'package:fl_test/pages/samsung.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //start :
      title: "Mobtech",
      home: Home(),
      routes: {
        'categories': (context) {
          return categories();
        },
        'home': (context) {
          return Home();
        },
        'Samsung': (context) {
          return Samsung();
        }
      },
      //end
    );
  }
}
