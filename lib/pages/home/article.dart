import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../themeData.dart';

class Article extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: Row(
                    children: [
                      Text('Articles',
                          textAlign: TextAlign.left, style: AppTheme.Title),
                    ],
                  )),
                ],
              ),
            ),
          )),
    );
  }
}
