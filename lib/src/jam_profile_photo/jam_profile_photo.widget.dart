import 'dart:io';
import 'package:flutter/material.dart';
import 'jam_profile_photo_bottom_sheet.widget.dart';

class JamProfilePhoto extends StatelessWidget {
  final String photoUrl;
  final Function(File photo) uploadPhoto;
  final Function() removePhoto;

  const JamProfilePhoto({
    Key key,
    @required this.photoUrl,
    @required this.uploadPhoto,
    @required this.removePhoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 200.0,
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => JamProfilePhotoBottomSheet(
                  uploadPhoto: this.uploadPhoto,
                  removePhoto: this.removePhoto,
                ),
          );
        },
        highlightElevation: 20.0,
        child: CircleAvatar(
          child: this.photoUrl != null
              ? null
              : Icon(
                  Icons.account_circle,
                  size: 200.0,
                  color: Colors.white24,
                ),
          radius: 100.0,
          backgroundColor: Colors.pink,
          backgroundImage:
              this.photoUrl == null ? null : NetworkImage(this.photoUrl),
        ),
      ),
    );
  }
}
