import 'package:flutter/material.dart';
import 'package:gerald_app/core/constants/images.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/custom_backbutton.dart';
import 'package:gerald_app/core/global_components/global_text.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:get/get.dart';

class PumpHouseScreen extends StatelessWidget {
  const PumpHouseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      appBar: AppBar(
        leading: CustomBackButton(
          onPressed: () {
            Get.back();
          },
        ),
        title: const GlobalText(
          text: 'Rumah Pompa',
          type: TextType.bold,
          fontSize: 18,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Get.offAllNamed(NavigationRoute.editpump);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                Images.pump,
                height: 343,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            const GlobalText(
              text: 'Rumah Pompa Mulyosari (Ring Road ITS)',
              type: TextType.bold,
              fontSize: 20,
            ),
            const SizedBox(height: 8.0),
            const GlobalText(
              text: 'Kejawaan Putih Tambak, Kec. Mulyorejo, Surabaya, Jawa Timur 60115',
              type: TextType.normal,
              fontSize: 14,
              color: Colors.grey,
            ),
            const SizedBox(height: 16.0),
            const Row(
              children: [
                GlobalText(
                  text: '90 cm',
                  type: TextType.bold,
                  fontSize: 20,
                ),
                SizedBox(width: 8.0),
                GlobalText(
                  text: 'Ambang batas ketinggian air',
                  type: TextType.normal,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const Row(
              children: [
                GlobalText(
                  text: '120 cm',
                  type: TextType.bold,
                  fontSize: 20,
                ),
                SizedBox(width: 8.0),
                GlobalText(
                  text: 'Ketinggian sensor',
                  type: TextType.normal,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
