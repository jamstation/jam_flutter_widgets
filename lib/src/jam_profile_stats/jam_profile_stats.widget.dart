import 'package:flutter/material.dart';
import 'jam_profile_stat_item.widget.dart';

class JamProfileStats extends StatelessWidget {
  final List<JamProfileStatItem> children;

  const JamProfileStats({Key key, this.children = const <JamProfileStatItem>[]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: this.children,
      ),
    );
  }
}
