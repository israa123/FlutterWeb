import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  myApp({Key key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App_Test',
      theme: ThemeData(),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
