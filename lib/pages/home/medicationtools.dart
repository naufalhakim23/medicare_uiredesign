import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Medicare/pages/home/medicationtools_page.dart';
import 'package:Medicare/pages/home/medicationtools_thumbnail.dart';

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
