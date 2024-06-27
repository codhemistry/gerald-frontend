import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/constants/text.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/custom_dialog.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/listitem_builder.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BaseWidgetContainer(
      appBar: AppBar(
        title: const Text(ProfileScreenText.profile),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20.h),
          CircleAvatar(
            radius: 50.r,
            backgroundColor: Colors.grey.shade200,
            child: Icon(Icons.person, size: 50.r, color: Colors.grey),
          ),
          SizedBox(height: 10.h),
          Text(
            'Zainul',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '@zainul123',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  ListItemBuilder.buildListItem(ProfileScreenText.seeProfile, Icons.chevron_right, () {
                    Get.offAllNamed(NavigationRoute.seeprofile);
                  }),
                  const Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem(ProfileScreenText.accountSetting, Icons.chevron_right, () {
                    Get.offAllNamed(NavigationRoute.comingsoon);
                  }),
                  const Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem(ProfileScreenText.aboutGerald, Icons.chevron_right, () {
                    Get.offAllNamed(NavigationRoute.comingsoon);
                  }),
                  const Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem(ProfileScreenText.termsAndConditions, Icons.chevron_right, () {
                    Get.offAllNamed(NavigationRoute.comingsoon);
                  }),
                  const Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem(ProfileScreenText.privacyPolicy, Icons.chevron_right, () {
                    Get.offAllNamed(NavigationRoute.comingsoon);
                  }),
                  const Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem(ProfileScreenText.signOut, Icons.chevron_right, () {
                    Get.dialog(CustomDialog(
                      title: ProfileScreenText.signOut,
                      message: ProfileScreenText.signOutMessage,
                      leftButtonText: ProfileScreenText.cancel,
                      rightButtonText: ProfileScreenText.confirmation,
                      leftButtonColor: Colors.white,
                      rightButtonColor: Colors.blue,
                      leftButtonTextColor: Colors.blue,
                      rightButtonTextColor: Colors.white,
                      onLeftButtonPressed: () {
                        // Handle edit action
                        Get.back(); // Close the dialog
                      },
                      onRightButtonPressed: () {
                        // Handle save action
                        Get.back(); // Close the dialog
                        // Additional save logic here
                      },
                    ));
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}