import 'package:flutter/material.dart';
import 'package:gerald_app/core/constants/images.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
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
                  const Text(
                    'Ayok Rek Jogo Suroboyo Bebas Genangan!',
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Pantau ketinggian air, ramalan cuaca, dan status pompa terkini. Dapatkan notifikasi apabila keadaan darurat terjadi. Gerald siap bantu kamu bebaskan Surabaya dari kenangan, eh, genangan :D',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(NavigationRoute.login);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    child: const Center(child: Text('Mulai')),
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