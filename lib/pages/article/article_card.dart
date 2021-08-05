import 'package:Medicare/models/articles.dart';
import 'package:Medicare/themeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleCard extends StatelessWidget {
  final ArticleUpdate article;
  ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                width: ScreenUtil().setWidth(250),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFF4F5F6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            article.imageAsset,
                          ),
                        ),
                      ),
                    )),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            article.name,
                            style: AppTheme.Name,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            article.hashtags,
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(64, 74, 106, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
