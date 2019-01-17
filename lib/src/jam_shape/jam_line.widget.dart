import 'package:flutter/material.dart';

class JamLine extends StatelessWidget {
  final double length;
  final double thickness;
  final Color color;
  final BorderStyle style;

  const JamLine({
    Key key,
    this.length = double.infinity,
    this.thickness = 1.0,
    this.color,
    this.style = BorderStyle.solid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.length,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: this.thickness,
            color: this.color ?? Theme.of(context).primaryColor,
            style: this.style,
          ),
        ),
      ),
    );
  }
}
