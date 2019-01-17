import 'package:flutter/material.dart';

class JamCircle extends StatelessWidget {
  final Widget child;
  final double diameter;
  final Color color;
  final Border border;

  const JamCircle({
    Key key,
    this.child,
    this.diameter = 50.0,
    this.color,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child,
      width: this.diameter,
      height: this.diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: this.color,
        border: this.border,
      ),
    );
  }
}
