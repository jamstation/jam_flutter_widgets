import 'package:flutter/material.dart';

class JamConditionallySwitchContainer extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  final bool condition;

  const JamConditionallySwitchContainer(
      {Key key,
      @required this.child1,
      @required this.child2,
      @required this.condition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (this.condition ?? false) ? this.child1 : this.child2;
  }
}
