import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicare_uiredesign/themeData.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(16.0),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Text('Hi!',
                              textAlign: TextAlign.left,
                              style: AppTheme.regular),
                        ],
                      )),
                      Padding(padding: EdgeInsets.all(1)),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Name', // will be using $ for input from user
                              textAlign: TextAlign.left,
                              style: AppTheme.bold,
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(1)),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.location_on_outlined),
                            Padding(padding: EdgeInsets.all(1)),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
