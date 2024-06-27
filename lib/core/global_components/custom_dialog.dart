import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String message;
  final String leftButtonText;
  final String rightButtonText;
  final VoidCallback onLeftButtonPressed;
  final VoidCallback onRightButtonPressed;
  final Color leftButtonColor;
  final Color rightButtonColor;
  final Color leftButtonTextColor;
  final Color rightButtonTextColor;

  const CustomDialog({
    Key? key,
    required this.title,
    required this.message,
    this.leftButtonText = 'Cancel',
    this.rightButtonText = 'OK',
    required this.onLeftButtonPressed,
    required this.onRightButtonPressed,
    this.leftButtonColor = Colors.white,
    this.rightButtonColor = Colors.blue,
    this.leftButtonTextColor = Colors.blue,
    this.rightButtonTextColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Container(
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              message,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: onLeftButtonPressed,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: leftButtonTextColor, backgroundColor: leftButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      side: BorderSide(color: leftButtonTextColor),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  ),
                  child: Text(
                    leftButtonText,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: leftButtonTextColor,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: onRightButtonPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: rightButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  ),
                  child: Text(
                    rightButtonText,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: rightButtonTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
