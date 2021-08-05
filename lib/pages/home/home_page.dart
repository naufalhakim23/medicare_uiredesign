import 'package:Medicare/pages/article/article_screen.dart';
import 'package:Medicare/pages/medtoolpage/medicationtools_page.dart';
import 'package:Medicare/pages/medtoolpage/medicationtools_thumbnail.dart';
import 'package:Medicare/profile_picture.dart';
import 'package:Medicare/themeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              HomePageHeader(),
              SearchBar(),
              HealthStatInfo(),
              HealthListView(),
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

class HomePageHeader extends StatefulWidget {
  @override
  _HomePageHeaderState createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
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
                    'Lalisa Manoban', // will be using $ for input from user
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
                    'South Korea', // will be using $ for input from user
                    textAlign: TextAlign.left,
                    style: AppTheme.Title,
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

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextFormField(
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Cari Unit Kesehatan',
                            border: InputBorder.none,
                            helperStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: HexColor('#B9BABC'),
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.search, color: HexColor('#B9BABC')),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HealthStatInfo extends StatefulWidget {
  @override
  _HealthStatInfoState createState() => _HealthStatInfoState();
}

class _HealthStatInfoState extends State<HealthStatInfo> {
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

class HealthStatSlider extends StatefulWidget {
  @override
  _HealthStatSliderState createState() => _HealthStatSliderState();
}

class _HealthStatSliderState extends State<HealthStatSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.lightBlue.shade50,
            blurRadius: 8.0,
            spreadRadius: 4,
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "user.name",
              style: TextStyle(
                  inherit: true,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: Colors.black),
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "user.name",
              style: TextStyle(
                  inherit: true,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: Colors.grey),
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "user.name",
              style: TextStyle(
                  inherit: true,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: Colors.grey),
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class HealthListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: Colors.white,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 10,
          ),
          HealthStatListView2(),
          SizedBox(
            width: 10,
          ),
          HealthStatListView2(),
          SizedBox(
            width: 10,
          ),
          HealthStatListView2(),
          SizedBox(
            width: 10,
          ),
          HealthStatListView2(),
        ],
      ),
    );
  }
}

class HealthStatListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          width: 120,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ]),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('2',
                maxLines: 1,
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Fisik',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            Text(
              'Kurang Sehat',
            )
          ]),
        ));
  }
}

class MedTool extends StatefulWidget {
  @override
  _MedToolState createState() => _MedToolState();
}

class _MedToolState extends State<MedTool> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        //need refractor for easier management
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MedToolPage()));
                  },
                  child: MedToolThumbnail(
                    imagePath: "assets/images/Banner_Toko.png",
                  ),
                ),
              ],
            ),
          ),
        ]);

    // TODO: implement build
  }
}

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
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
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

class Article extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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

class ArticleList extends StatefulWidget {
  @override
  _ArticleListState createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        //need refractor for easier management
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Container(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticleScreen()));
                    },
                    child: ArticleListThumbnail(
                        imagePath: 'assets/images/anakibu.jpg',
                        name:
                            'Peran Keluarga Dalam Menjaga Kesehatan Mental Anak')),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticleScreen()));
                    },
                    child: ArticleListThumbnail(
                        imagePath: 'assets/images/anakibu.jpg',
                        name:
                            'Peran Keluarga Dalam Menjaga Kesehatan Mental Anak')),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticleScreen()));
                    },
                    child: ArticleListThumbnail(
                        imagePath: 'assets/images/anakibu.jpg',
                        name:
                            'Peran Keluarga Dalam Menjaga Kesehatan Mental Anak')),
              ],
            ),
          ),
        ]);

    // TODO: implement build
  }
}

class ArticleListThumbnail extends StatelessWidget {
  final String imagePath;
  final String name;

  const ArticleListThumbnail({
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 120.0,
            width: 370.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              '$name',
              style: AppTheme.ArticleTitle,
            ),
          ),
        ],
      ),
    );
  }
}
