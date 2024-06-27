import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/listitem_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BaseWidgetContainer(
      appBar: AppBar(
        title: const Text('Profil'),
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
                  ListItemBuilder.buildListItem('Lihat akun', Icons.chevron_right, () {
                    // Handle item tap
                  }),
                  Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem('Pengaturan akun', Icons.chevron_right, () {
                    // Handle item tap
                  }),
                  Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem('Tentang GERALD', Icons.chevron_right, () {
                    // Handle item tap
                  }),
                  Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem('Syarat dan Ketentuan', Icons.chevron_right, () {
                    // Handle item tap
                  }),
                  Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem('Kebijakan Privasi', Icons.chevron_right, () {
                    // Handle item tap
                  }),
                  Divider(thickness: 1, height: 1),
                  ListItemBuilder.buildListItem('Keluar', Icons.chevron_right, () {
                    // Handle item tap
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