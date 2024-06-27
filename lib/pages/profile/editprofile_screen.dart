import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/global_components/custom_dropdown.dart';
import 'package:gerald_app/core/global_components/custom_textfield.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            // Handle close action
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Edit'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              // Handle save action
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
              ),
              const CustomDropdownField(
                label: 'Jabatan',
                value: 'Petugas',
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
