import 'package:flutter/material.dart';
import 'package:gerald_app/core/global_components/custom_backbutton.dart';
import 'package:gerald_app/pages/explore/controller/editpumpdetail_controller.dart';
import 'package:get/get.dart';
import 'package:gerald_app/core/constants/images.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/global_text.dart';

class EditpumpScreem extends StatelessWidget {
  final EditpumpdetailController controller = Get.put(EditpumpdetailController());

  EditpumpScreem({Key? key}) : super(key: key);

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
            icon: const Icon(Icons.check),
            onPressed: () {
              // Handle save action
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const GlobalText(
                      text: 'Ambang batas ketinggian air',
                      type: TextType.normal,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: controller.decrementWaterLevel,
                        ),
                        Obx(() => GlobalText(
                          text: '${controller.waterLevel} cm',
                          type: TextType.bold,
                          fontSize: 20,
                        )),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: controller.incrementWaterLevel,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const GlobalText(
                      text: 'Ketinggian sensor',
                      type: TextType.normal,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: controller.decrementSensorHeight,
                        ),
                        Obx(() => GlobalText(
                          text: '${controller.sensorHeight} cm',
                          type: TextType.bold,
                          fontSize: 20,
                        )),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: controller.incrementSensorHeight,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
