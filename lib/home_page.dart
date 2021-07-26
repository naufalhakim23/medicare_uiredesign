import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicare_uiredesign/healthStat_info.dart';
import 'package:medicare_uiredesign/home_page_header.dart';
import 'package:medicare_uiredesign/medicationtools.dart';
import 'package:medicare_uiredesign/searchbar.dart';
import 'package:medicare_uiredesign/services.dart';

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
              HomePage_Header(),
              SearchBar(),
              healthStatInfo(),
              MedTool(),
              serviceApp(),
            ],
          ),
        ),
      ),
    );
  }
}
