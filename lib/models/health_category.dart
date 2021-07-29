import 'dart:ui';

import 'package:Medicare/themeData.dart';

class Category {
  Category({
    required this.risk,
    required this.healthCategory,
    required this.color,
    required this.status,
  });

  final int risk;
  final String status;
  final Color color;
  final String healthCategory;
}

List<Category> categoryList = <Category>[
  Category(
    risk: 2,
    color: AppTheme.nearlyWhite,
    healthCategory: 'Fisik',
    status: 'Kurang Sehat',
  ),
  Category(
    risk: 0,
    color: AppTheme.nearlyWhite,
    healthCategory: 'Jantung',
    status: 'Sehat',
  ),
  Category(
    risk: 0,
    color: AppTheme.nearlyWhite,
    healthCategory: 'Mata',
    status: 'Sehat',
  ),
  Category(
    risk: 0,
    color: AppTheme.nearlyWhite,
    status: 'Mulut',
    healthCategory: 'Sehat',
  ),
];
