import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imagePath;
  const ProfilePicture({
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CircleAvatar(
        radius: 25,
        child: ClipRRect(
          child: Image.asset(imagePath),
        ));
    throw UnimplementedError();
  }
}
