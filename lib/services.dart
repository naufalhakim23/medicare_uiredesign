import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicare_uiredesign/models/services_category.dart';
import 'package:medicare_uiredesign/themeData.dart';

class serviceApp extends StatefulWidget {
  @override
  _serviceAppState createState() => _serviceAppState();
}

class _serviceAppState extends State<serviceApp> {
  @override
  Widget build(BuildContext context) {
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
                      Text('Services',
                          textAlign: TextAlign.left, style: AppTheme.Title),
                    ],
                  )),
                ],
              ),
            ),
          )),
    );
    throw UnimplementedError();
  }
}
