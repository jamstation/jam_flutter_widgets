import 'package:flutter/material.dart';

class JamSearchListItem extends StatelessWidget {
  final String title;

  const JamSearchListItem({Key key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 2.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: ListTile(
          title: Text(title),
        ),
      ),
    );
  }
}
