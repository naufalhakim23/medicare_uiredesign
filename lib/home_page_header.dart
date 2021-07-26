import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicare_uiredesign/profile_picture.dart';
import 'package:medicare_uiredesign/themeData.dart';

class HomePage_Header extends StatefulWidget {
  @override
  _HomePage_HeaderState createState() => _HomePage_HeaderState();
}

class _HomePage_HeaderState extends State<HomePage_Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Container(
                child: Row(
              children: [
                Text('Hi!',
                    textAlign: TextAlign.left, style: AppTheme.Greetings),
              ],
            )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Name', // will be using $ for input from user
                    textAlign: TextAlign.left,
                    style: AppTheme.Name,
                  ),
                  ProfilePicture(imagePath: 'assets/images/user_2.png')
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on_outlined),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'location', // will be using $ for input from user
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
