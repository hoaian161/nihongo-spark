import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nihongo_spark/screens/home/widgets/practice.dart';
import 'package:nihongo_spark/screens/home/widgets/profile.dart';
import '../../constants/init.dart';
import '../../constants/color.dart';

class Home extends StatefulWidget {
    Home();

    @override
    State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: RGBO_BACKGROUND_COLOR,
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text(
                                    'Home',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                    )
                                ),
                                Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: RGBO_GREY_COLOR,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Row(
                                        children: [
                                            Icon(
                                                Icons.expand_circle_down_outlined,
                                                size: 15
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                                'Welcome to Nihongo Spark app, learn now',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black54
                                                ),
                                            )
                                        ],
                                    ),
                                ),
                                SizedBox(height: 15),
                                CardTitle('Profile'),
                                SizedBox(height: 5),
                                ProfileContainer(),
                                SizedBox(height: 15),
                                CardTitle('Practice'),
                                SizedBox(height: 5),
                                PracticeContainer(),
                            ],
                        ),
                    )
                )
            )
        );
    }
}