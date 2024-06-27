import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/base_button.dart';

class PlaceholderContent extends StatelessWidget {
  const PlaceholderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Icon(
              Icons.image,
              size: 50.r,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Nothing here. For now.',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'This is where you’ll find your To do reports.',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          BaseButton(text: 'Buat laporan', onPressed: () {}),
        ],
      ),
    );
  }
}
