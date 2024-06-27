// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gerald_app/core/helpers/bottom_nav_controller.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  final NavController navController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          selectedItemColor: const Color(0xFF006FFD),
          unselectedItemColor: const Color(0xFFD4D6DD),
          selectedLabelStyle: const TextStyle(color: Color(0xFF000000)),
          unselectedLabelStyle: const TextStyle(color: Color(0xFFD4D6DD)),
          showUnselectedLabels: true,
          currentIndex: navController.selectedIndex.value,
          onTap: (index) => navController.changeTabIndex(index),
          items:  const [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: 'Lapor',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifikasi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ));
  }
}