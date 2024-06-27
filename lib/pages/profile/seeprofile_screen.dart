import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/custom_backbutton.dart';
import 'package:gerald_app/core/global_components/global_text.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:gerald_app/pages/profile/builder/profile_builder.dart';
import 'package:get/get.dart';

class SeeProfileScreen extends StatelessWidget {
  const SeeProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      appBar: AppBar(
        leading: CustomBackButton(
          onPressed: () {
            Get.offAllNamed(NavigationRoute.mainMenu);
          },
        ),
        title: const Text('Akun'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Get.offAllNamed(NavigationRoute.editprofile);
            },
            child: const Text(
              'Edit',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0.w),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.person, size: 50.r, color: Colors.grey),
            ),
            SizedBox(height: 10.h),
            GlobalText(
              text: 'Zainul',
              fontSize: 20.sp,
              type: TextType.bold,
            ),
            GlobalText(text: '@zainul123', fontSize: 16.sp),
            SizedBox(height: 20.h),
            const ProfileInfoRow(
              title: 'Rumah Pompa',
              value: 'Mulyosari (Ring road ITS)',
            ),
            const ProfileInfoRow(
              title: 'Jabatan',
              value: 'Petugas',
            ),
            const ProfileInfoRow(
              title: 'Nomor HP',
              value: '-',
            ),
            const ProfileInfoRow(
              title: 'Alamat',
              value: '-',
            ),
          ],
        ),
      ),
    );
  }
}