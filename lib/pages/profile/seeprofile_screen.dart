import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/pages/profile/builder/profile_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back action
          },
        ),
        title: const Text('Akun'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Handle edit action
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
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          children: [
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Eksplor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Lapor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: 3,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}