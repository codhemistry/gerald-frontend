import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/global_components/global_text.dart';

class ProfileInfoRow extends StatelessWidget {
  final String title;
  final String value;

  const ProfileInfoRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120.w,
            child: GlobalText(
              text: title,
              fontSize: 16.sp,
              type: TextType.bold,
            ),
          ),
          Expanded(
            child: GlobalText(
              text: value,
              fontSize: 16.sp,
              color: Colors.grey.shade600, 
            )
          ),
        ],
      ),
    );
  }
}
