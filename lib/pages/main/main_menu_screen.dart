// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gerald_app/core/global_components/base_bottom_nav.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/helpers/bottom_nav_controller.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/explore_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/report_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/notification_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/profile_screen.dart';
import 'package:get/get.dart';


class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final NavController navController = Get.put(NavController());

    return BaseWidgetContainer(
      body: SafeArea(
        child: Obx(() {
          switch (navController.selectedIndex.value) {
            case 0:
              return  const ExploreScreen();
            case 1:
              return  const ReportScreen();
            case 2:
              return const NotifiesScreen();
            case 3:
              return ProfileScreen();
            default:
              return const SizedBox.shrink();
          }
        }),
      ),
      bottomNavigationBar: BottomNav()
    );
  }
}