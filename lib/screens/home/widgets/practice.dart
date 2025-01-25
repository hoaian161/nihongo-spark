import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/init.dart';
import '../../../constants/color.dart';

class PracticeContainer extends StatefulWidget {
    @override
    State<StatefulWidget> createState() => _PracticeContainer();
}

class _PracticeContainer extends State<PracticeContainer> {
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
                                    color: RGBO_GREEN_COLOR,
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
                            NormalText('Hiragana'),
                            Spacer(),
                            Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 15
                            ),
                            SizedBox(width: 5)
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
                                    color: RGBO_ORANGE_COLOR,
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
                            NormalText('Katakana'),
                            Spacer(),
                            Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
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