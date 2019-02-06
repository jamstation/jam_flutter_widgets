import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class JamProfilePhotoBottomSheet extends StatelessWidget {
  final Function(File photo) uploadPhoto;
  final Function() removePhoto;

  const JamProfilePhotoBottomSheet({
    Key key,
    @required this.uploadPhoto,
    @required this.removePhoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.only(left: 30.0),
            leading: Icon(Icons.add_a_photo, color: Colors.indigo),
            title: Text(
              'Upload New Photo',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('Replaces current photo'),
            onTap: () async {
              var newPhoto =
                  await ImagePicker.pickImage(source: ImageSource.gallery);
              this.uploadPhoto(newPhoto);
              Navigator.pop(context);
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 30.0),
            leading: Icon(Icons.delete, color: Colors.red),
            title: Text(
              'Remove Photo',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('Resets to default icon'),
            onTap: () {
              this.removePhoto();
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
