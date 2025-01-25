import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/init.dart';
import '../../../constants/color.dart';

class ProfileContainer extends StatefulWidget {
    @override
    State<StatefulWidget> createState() => _ProfileContainer();
}

class _ProfileContainer extends State<ProfileContainer> {
    @override
    Widget build(BuildContext context) {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
                children: [
                    Row(
                        children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: RGBO_BLUE_COLOR,
                                    borderRadius: BorderRadius.circular(10),
                                ),
                                width: 30,
                                height: 30,
                                child: Icon(
                                    Icons.alternate_email,
                                    color: Colors.white
                                ),
                            ),
                            SizedBox(width: 10),
                            NormalText('nihongo@gmail.com')
                        ],
                    ),
                    // SizedBox(height: 2),
                    Divider(
                        color: Colors.grey,
                        thickness: 0.3,
                        indent: 40,
                        endIndent: 0,
                    ),
                    Row(
                        children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: RGBO_RED_COLOR,
                                    borderRadius: BorderRadius.circular(10),
                                ),
                                width: 30,
                                height: 30,
                                child: Icon(
                                    Icons.local_fire_department_outlined,
                                    color: Colors.white
                                ),
                            ),
                            SizedBox(width: 10),
                            NormalText('30 streaks'),
                            Spacer(),
                            Icon(
                                Icons.share_outlined,
                                color: Colors.black,
                                size: 15
                            ),
                            SizedBox(width: 5)
                        ],
                    ),
                ],
            ),
        );
    }
}