import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Medicare/models/articles.dart';
import 'package:Medicare/pages/article/article_screen.dart';
import 'package:Medicare/themeData.dart';

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
