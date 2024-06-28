import 'package:cloud_firestore/cloud_firestore.dart';
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
    return BaseWidgetContainer(
      appBar: AppBar(
        title: GlobalText(
          text: ProfileScreenText.profile,
          type: TextType.bold,
          fontSize: 18.sp,
        ),
        centerTitle: true,
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: profileController.userStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('No data found'));
          }

          var userData = snapshot.data!.data() as Map<String, dynamic>;
          String name = userData['nama'] ?? 'No Name';
          String username = userData['username'] ?? 'No Username';

          return Column(
            children: [
              SizedBox(height: 20.h),
              CircleAvatar(
                radius: 50.r,
                backgroundColor: Colors.grey.shade200,
                child: Image(image: NetworkImage('https://ui-avatars.com/api/?name=${name}'), fit: BoxFit.fill,),
              ),
              SizedBox(height: 10.h),
              GlobalText(
                text: name,
                type: TextType.bold,
                fontSize: 24.sp,
              ),
              GlobalText(
                text: '@$username',
                color: Colors.grey,
                fontSize: 16.sp,
                type: TextType.normal,
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      ListItemBuilder.buildListItem(
                          ProfileScreenText.seeProfile, Icons.chevron_right,
                          () {
                        Get.offAllNamed(NavigationRoute.seeprofile, arguments: userData);
                      }),
                      const Divider(thickness: 1, height: 1),
                      ListItemBuilder.buildListItem(
                          ProfileScreenText.accountSetting, Icons.chevron_right,
                          () {
                        Get.offAllNamed(NavigationRoute.comingsoon);
                      }),
                      const Divider(thickness: 1, height: 1),
                      ListItemBuilder.buildListItem(
                          ProfileScreenText.aboutGerald, Icons.chevron_right,
                          () {
                        Get.offAllNamed(NavigationRoute.comingsoon);
                      }),
                      const Divider(thickness: 1, height: 1),
                      ListItemBuilder.buildListItem(
                          ProfileScreenText.termsAndConditions,
                          Icons.chevron_right, () {
                        Get.offAllNamed(NavigationRoute.comingsoon);
                      }),
                      const Divider(thickness: 1, height: 1),
                      ListItemBuilder.buildListItem(
                          ProfileScreenText.privacyPolicy, Icons.chevron_right,
                          () {
                        Get.offAllNamed(NavigationRoute.comingsoon);
                      }),
                      const Divider(thickness: 1, height: 1),
                      ListItemBuilder.buildListItem(
                          ProfileScreenText.signOut, Icons.chevron_right, () {
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
          );
        },
      ),
    );
  }
}