import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data_controller.dart';

class MedPage extends GetView<MedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Still Under Development",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
