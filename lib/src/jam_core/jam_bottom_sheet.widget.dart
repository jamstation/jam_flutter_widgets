import 'package:flutter/material.dart';

class JamBottomSheet extends StatelessWidget {
  final Color color;
  final EdgeInsets padding;
  final double width;
  final double height;
  final double topBorderRadius;
  final String title;
  final Widget child;
  final List<Widget> actions;
  final bool shouldAddCancelButton;

  const JamBottomSheet({
    Key key,
    this.color = Colors.white,
    this.padding = const EdgeInsets.symmetric(horizontal: 30.0),
    this.width = double.infinity,
    this.height,
    this.topBorderRadius = 10.0,
    this.title = '',
    @required this.child,
    this.actions = const <Widget>[],
    this.shouldAddCancelButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(this.topBorderRadius),
            topRight: Radius.circular(this.topBorderRadius),
          ),
        ),
        padding: this.padding,
        width: this.width,
        height: this.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ///
            /// Header
            ///
            Container(
              width: double.infinity,
              height: 100.0,
              // color: Colors.lime,
              alignment: Alignment.centerLeft,
              child: Text(
                this.title,
                style: Theme.of(context).textTheme.display1,
              ),
            ),

            ///
            /// Body
            ///
            Expanded(child: SingleChildScrollView(child: this.child)),

            ///
            /// Footer
            ///
            Container(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  this.shouldAddCancelButton
                      ? FlatButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancel'),
                        )
                      : Container(),
                ]..addAll(this.actions),
              ),
            )
          ],
        ),
      ),
    );
  }
}
