import 'package:flutter/material.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:get/get.dart'; 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: NavigationRoute.initial,
      getPages: NavigationRoute.routes,
    );
  }
}