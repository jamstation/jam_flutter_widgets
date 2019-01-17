import 'package:flutter/material.dart';

class JamCard extends StatelessWidget {
  final String title;
  final Widget child;

  const JamCard({Key key, @required this.child, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 4.0),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          this.title == null
              ? Container()
              : Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
          this.child,
        ],
      ),
    );
  }
}
