import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class MedToolThumbnail extends StatelessWidget {
  final String imagePath;

  const MedToolThumbnail({
    required this.imagePath,
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
        ],
      ),
    );
  }
}
