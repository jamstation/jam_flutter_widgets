import 'package:flutter/material.dart';
import 'jam_search_list_item.widget.dart';

class JamSearchPage extends StatelessWidget {
  const JamSearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: TextField(
          decoration: InputDecoration.collapsed(hintText: 'Search'),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  JamSearchListItem(title: 'New Perungulathur, Chennai'),
                  JamSearchListItem(title: 'Tambaram, Chennai'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
