import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numball = 1;
  void changerImage() {
    setState(() {
      numball = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff4ca2f5),
        appBar: AppBar(
          backgroundColor: Color(0XFF3158ab),
          title: Text('ASK ME ANYTHING...'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                changerImage();
              });
            },
            child: Image(
              image: AssetImage('images/ball$numball.png'),
            ),
          ),
        ),
      ),
    );
  }
}
