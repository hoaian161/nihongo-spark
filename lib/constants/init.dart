import 'dart:ui';
import 'package:flutter/cupertino.dart';

class NormalText extends StatelessWidget {
    late String text;

    NormalText(String text) {
        this.text = text;
    }

    @override
    Widget build(BuildContext context) {
        return Text(
            text,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400
            )
        );
    }
}

class CardTitle extends StatelessWidget {
    late String text;

    CardTitle(String text) {
        this.text = text;
    }

    @override
    Widget build(BuildContext context) {
        return Text(
            text,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),
        );
    }
}