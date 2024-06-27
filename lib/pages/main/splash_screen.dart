// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _decideNextScreen();
  }

  Future<void> _decideNextScreen() async {
    // final SharedPreferencesUtils authLocalDatasource = SharedPreferencesUtils();
    // await authLocalDatasource.init();
    
    // Memberikan delay 1 detik sebelum menentukan halaman selanjutnya
    await Future.delayed(const Duration(seconds: 3));
    
    Get.offNamed(NavigationRoute.onboarding);
    
    //bool isTokenAvailable = await SharedPreferencesUtils().isLogin();
    // if (isTokenAvailable) {
    //   Get.offNamed(NavigationRoute.mainMenu);
    // } else {
    //   Get.offNamed(NavigationRoute.login);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return  BaseWidgetContainer(
      body: Stack(
        children: <Widget>[
          Container(
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage(Images.bgSplash),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
          const Center(
            // child: Image.asset(
            //   Images.titleSplash,
            //   width: 200,
            //   height: 200,
            // ),
            child: Text("Splash Screen"),
          ),
        ],
      ),
    );
  }
}