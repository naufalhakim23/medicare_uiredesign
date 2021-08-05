import 'package:Medicare/pages/account/accountlistview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_controller.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              AccountListOpt(),
              ListDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
