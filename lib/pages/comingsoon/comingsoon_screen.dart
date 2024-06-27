import 'package:flutter/material.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/base_button.dart';
import 'package:get/get.dart';
import 'package:gerald_app/core/global_components/global_text.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const GlobalText(
                text: 'Coming Soon',
                type: TextType.bold,
                fontSize: 24,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const GlobalText(
                text: 'We\'re still developing this feature. Stay tuned!',
                type: TextType.normal,
                fontSize: 16,
                textAlign: TextAlign.center,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
              BaseButton(text: 'Back to Main Menu', onPressed: () {
                Get.offAllNamed(NavigationRoute.mainMenu);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
