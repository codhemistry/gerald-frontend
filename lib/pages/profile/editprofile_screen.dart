import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/global_components/custom_dialog.dart';
import 'package:gerald_app/core/global_components/custom_dropdown.dart';
import 'package:gerald_app/core/global_components/custom_textfield.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Get.dialog(CustomDialog(
              title: 'Batalkan Edit?',
              message: 'Semua perubahan tidak disimpan. Lanjutkan edit dengan klik Kembali. ',
              leftButtonText: 'Batal',
              rightButtonText: 'Kembali',
              leftButtonColor: Colors.black,
              rightButtonColor: Colors.white,
              leftButtonTextColor: Colors.white,
              rightButtonTextColor: Colors.blue,
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
          },
        ),
        title: const Text('Edit'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              Get.dialog(CustomDialog(
              title: 'Simpan data?',
              message: 'Semua perubahan akan disimpan. Pastikan kembali data yang kamu isikan sudah benar.',
              leftButtonText: 'Edit',
              rightButtonText: 'Simpan',
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
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.person, size: 50.r, color: Colors.grey),
              ),
              SizedBox(height: 20.h),
              const CustomTextField(
                label: 'Nama',
                placeholder: 'Zainul',
              ),
              const CustomTextField(
                label: 'Username',
                placeholder: 'zainul123',
              ),
              const CustomDropdownField(
                label: 'Rumah Pompa',
                value: 'Mulyosari (Ring road ITS)',
                items: [
                  'Mulyosari (Ring road ITS)',
                  'Option 2',
                  'Option 3',
                ],
              ),
              const CustomDropdownField(
                label: 'Jabatan',
                value: 'Petugas',
                items: [
                  'Petugas',
                  'Option 2',
                  'Option 3',
                ],
              ),
              const CustomTextField(
                label: 'Nomor HP',
                placeholder: 'Nomor HP',
              ),
              const CustomTextField(
                label: 'Alamat',
                placeholder: 'Alamat',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
