class Category {
  Category({
    this.risk = 0,
    this.healthCategory = '',
    this.status = '',
  });

  int risk;
  String status;
  String healthCategory;

  static List<Category> categoryList = <Category>[
    Category(
      risk: 2,
      healthCategory: 'Fisik',
      status: 'Kurang Sehat',
    ),
    Category(
      risk: 0,
      healthCategory: 'Jantung',
      status: 'Sehat',
    ),
    Category(
      risk: 0,
      healthCategory: 'Mata',
      status: 'Sehat',
    ),
    Category(
      risk: 0,
      status: 'Mulut',
      healthCategory: 'Sehat',
    ),
  ];

  // static List<Category> popularCourseList = <Category>[
  //   Category(
  //     risk: 'App Design Course',
  //     status: 12,
  //     healthCategory: 25,
  //   ),
  //   Category(
  //     risk: 'Web Design Course',
  //     status: 28,
  //     healthCategory: 208,
  //   ),
  //   Category(
  //     risk: 'App Design Course',
  //     status: 12,
  //     healthCategory: 25,
  //   ),
  //   Category(
  //     risk: 'Web Design Course',
  //     status: 28,
  //     healthCategory: 208,
  //   ),
  // ];
}
