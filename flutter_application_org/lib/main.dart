// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
        primaryColor: Colors.pink[500],
        primaryColorLight: Colors.white,
        accentColor: Colors.black12,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String title = 'Draggable / datatarget';

  Color _newColor = Colors.black12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Draggable<String>(
                data: _newColor.toString(),
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  color: _newColor,
                ),
                feedback: Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: _newColor,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 16.0,
                          offset: Offset(0.0, 4.0),
                          color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
