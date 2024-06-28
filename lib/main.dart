import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gerald_app/core/config/my_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MyApp();
      },
    );
  }
}
