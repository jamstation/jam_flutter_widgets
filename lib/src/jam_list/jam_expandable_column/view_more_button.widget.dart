import 'package:flutter/material.dart';

class ViewMoreButton extends StatelessWidget {
  final String text;

  const ViewMoreButton({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          this.text,
          style:
              Theme.of(context).textTheme.body1.copyWith(color: Colors.black45),
        ),
        Icon(Icons.expand_more, color: Colors.black38),
      ],
    );
  }
}
