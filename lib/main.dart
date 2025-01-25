import 'package:flutter/material.dart';
import 'package:nihongo_spark/screens/home/home.dart';

import 'constants/init.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Nihongo Spark',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
            ),
            home: Home(),
            debugShowCheckedModeBanner: false,
        );
    }
}