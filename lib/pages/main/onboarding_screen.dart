import 'package:flutter/material.dart';
import 'package:gerald_app/core/constants/images.dart';
import 'package:gerald_app/core/constants/text.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/custom_button.dart';
import 'package:gerald_app/core/global_components/global_text.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  Images.onboarding,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.white.withOpacity(0.7), // 70% opacity
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GlobalText(
                    text: OnboardingText.title,
                    type: TextType.bold,
                    fontSize: 24.0,
                  ),
                  const GlobalText(
                    text: OnboardingText.description,
                    type: TextType.desc,
                    fontSize: 12.0,
                  ),
                  const SizedBox(height: 16),
                  GlobalButton(
                    text: OnboardingText.button,
                    onPressed: () {
                      Get.offAllNamed(NavigationRoute.login);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}