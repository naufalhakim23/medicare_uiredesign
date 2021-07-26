import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicare_uiredesign/profile_picture.dart';
import 'package:medicare_uiredesign/themeData.dart';

class healthStatInfo extends StatefulWidget {
  @override
  _healthStatInfoState createState() => _healthStatInfoState();
}

class _healthStatInfoState extends State<healthStatInfo> {
  CategoryType categoryType = CategoryType.ui;

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

  Widget getUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.ui == categoryTypeData) {
      txt = 'Ui/Ux';
    } else if (CategoryType.coding == categoryTypeData) {
      txt = 'Coding';
    } else if (CategoryType.basic == categoryTypeData) {
      txt = 'Basic UI';
    }
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected ? AppTheme.nearlyBlue : AppTheme.nearlyWhite,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            border: Border.all(color: AppTheme.nearlyBlue)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.27,
                    color:
                        isSelected ? AppTheme.nearlyWhite : AppTheme.nearlyBlue,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum CategoryType {
  ui,
  coding,
  basic,
}
