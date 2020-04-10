import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  var rnd = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random color'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print('Clicked');
            },
            child: Scaffold(
              backgroundColor: Color.fromARGB(
                  255,
                  rnd.nextInt(255),
                  rnd.nextInt(255),
                  rnd.nextInt(255)),
              body: Center(
                child: Text('Hey there'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//class MyHomePage extends StatelessWidget {
//  final String title;
//
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return GestureDetector(
//      onTap: () {
//        Container(
//          child: Text('Less boring'),
//          color: Colors.red,
//          alignment: Alignment.center,
//          constraints: BoxConstraints.tight(Size.infinite),
//        );
//      },
//    );
//  }
//}

// backgroundColor: Color.fromARGB(
//            255, rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255)),
