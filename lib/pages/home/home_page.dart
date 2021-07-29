import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Medicare/pages/home/article.dart';
import 'package:Medicare/pages/home/article_tomain.dart';
import 'package:Medicare/pages/home/healthStat_info.dart';
import 'package:Medicare/pages/home/home_page_header.dart';
import 'package:Medicare/pages/home/medicationtools.dart';
import 'package:Medicare/pages/home/searchbar.dart';
import 'package:Medicare/pages/home/services.dart';

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
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              HomePage_Header(),
              SearchBar(),
              healthStatInfo(),
              HealthStatListView(),
              MedTool(),
              serviceApp(),
              ServicesListView(),
              Article(),
              ArticleList(),
            ],
          ),
        ),
      ),
    );
  }
}

class HealthStatListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          InkWell(
            onTap: () {},
            child: HealthStatSlider(),
          ),
          InkWell(
            onTap: () {},
            child: HealthStatSlider(),
          ),
          InkWell(
            onTap: () {},
            child: HealthStatSlider(),
          ),
          InkWell(
            onTap: () {},
            child: HealthStatSlider(),
          ),
        ],
      ),
    );
  }
}

class ServicesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        Container(
          height: 90,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              InkWell(
                onTap: () {},
                child: ServiceSlider(imagePath: "assets/images/Hospital.png"),
              ),
              InkWell(
                onTap: () {},
                child: ServiceSlider(imagePath: "assets/images/Care.png"),
              ),
              InkWell(
                onTap: () {},
                child: ServiceSlider(imagePath: "assets/images/diagnosis.png"),
              ),
              InkWell(
                onTap: () {},
                child: ServiceSlider(imagePath: "assets/images/medicine.png"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
