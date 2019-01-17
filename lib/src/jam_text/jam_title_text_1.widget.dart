import 'package:flutter/material.dart';

class JamTitleText1 extends StatelessWidget {
  final String text;

  const JamTitleText1({Key key, this.text = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: 34.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
