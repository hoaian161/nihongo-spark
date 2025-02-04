import 'package:flutter/material.dart';
import 'package:nihongo_spark/screens/home/home.dart';
import 'constants/init.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
