import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Color color;
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              RandomColor(),
              Center(
                child: Text("Hey there"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RandomColor extends StatefulWidget {
  @override
  RandomColorState createState() => RandomColorState();
}

class RandomColorState extends State<RandomColor> {
  // This widget is the root of your application.
  Color color;
  Random random = new Random();

  @override
  void initState() {
    super.initState();

    color = Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: InkWell(
        onTap: () {
          setState(() {
            color = Color.fromARGB(255, random.nextInt(255),
                random.nextInt(255), random.nextInt(255));
          });
        },
      ),
    );
  }
}
