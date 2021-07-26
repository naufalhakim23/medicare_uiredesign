import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Medicare/pages/chat/chats_page.dart';
import 'package:Medicare/pages/home/home_page.dart';
import 'package:Medicare/pages/account/account_page.dart';
import 'package:Medicare/pages/medicalrecord/data_page.dart';
import 'package:Medicare/themeData.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                MyHomePage(),
                MedPage(),
                ChatPage(),
                AccountPage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: AppTheme.darkGreen,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: Icons.home_outlined,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Icons.book_outlined,
                label: 'Data',
              ),
              _bottomNavigationBarItem(
                icon: Icons.chat_bubble_outline,
                label: 'Alerts',
              ),
              _bottomNavigationBarItem(
                icon: Icons.person_outlined,
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
