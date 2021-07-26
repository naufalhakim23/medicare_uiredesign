class ServicesCategory {
  ServicesCategory({
    this.service = '',
  });

  String service;

  static List<ServicesCategory> servicesList = <ServicesCategory>[
    ServicesCategory(service: 'Hospital'),
    ServicesCategory(service: 'Chat with Doctor'),
    ServicesCategory(service: 'Diagnosis'),
    ServicesCategory(service: 'Chat'),
  ];
}
