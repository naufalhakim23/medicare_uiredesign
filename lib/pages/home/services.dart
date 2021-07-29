import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Medicare/models/services_category.dart';
import 'package:Medicare/themeData.dart';

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
              padding: const EdgeInsets.only(left: 15),
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

class ServiceSlider extends StatelessWidget {
  final String imagePath;
  const ServiceSlider({
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
