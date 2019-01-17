import 'package:flutter/material.dart';

class JamConditionallyShowContainer extends StatelessWidget {
  final Widget child;
  final bool condition;

  const JamConditionallyShowContainer(
      {Key key, @required this.child, @required this.condition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: (this.condition ?? false) ? 1.0 : 0.0, child: this.child);
  }
}
