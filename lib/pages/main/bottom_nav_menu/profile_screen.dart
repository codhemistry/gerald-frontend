import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/constants/text.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/custom_dialog.dart';
import 'package:gerald_app/core/global_components/global_text.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/listitem_builder.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return  BaseWidgetContainer(
      appBar: AppBar(
        title: GlobalText(text: ProfileScreenText.profile, type: TextType.bold, fontSize: 18.sp),
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
          GlobalText(text: 'Zainul Abidin', type: TextType.bold, fontSize: 24.sp),
          GlobalText(text: '@zainul123', color: Colors.grey, fontSize: 16.sp, type: TextType.normal,),
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
                        profileController.logOut();
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