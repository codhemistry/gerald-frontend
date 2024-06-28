// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/pages/main/main_menu_screen.dart';
import 'package:gerald_app/pages/main/onboarding_screen.dart';
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
    await Future.delayed(const Duration(seconds: 3));

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Get.offAll(() => OnboardingScreen());
      } else {
        Get.offAll(() => MainMenuScreen());
      }
    });

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