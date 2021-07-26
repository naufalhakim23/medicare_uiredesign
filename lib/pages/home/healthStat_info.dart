import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Medicare/themeData.dart';
import 'package:Medicare/models/health_category.dart';

class healthStatInfo extends StatefulWidget {
  @override
  _healthStatInfoState createState() => _healthStatInfoState();
}

class _healthStatInfoState extends State<healthStatInfo> {
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
                      Text('Peringatan Kesehatan',
                          textAlign: TextAlign.left, style: AppTheme.Title),
                    ],
                  )),
                ],
              ),
            ),
          )),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

// class 