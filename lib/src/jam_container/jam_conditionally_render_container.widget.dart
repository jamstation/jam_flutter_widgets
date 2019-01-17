import 'package:flutter/material.dart';

class JamConditionallyRenderContainer extends StatelessWidget {
  final Widget child;
  final bool condition;

  const JamConditionallyRenderContainer(
      {Key key, @required this.child, @required this.condition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (this.condition ?? false) ? this.child : Container();
  }
}
