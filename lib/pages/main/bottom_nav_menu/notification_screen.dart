import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/global_text.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/notificationitem_builder.dart';
import 'package:get/get.dart';

class NotifiesScreen extends StatelessWidget {
  const NotifiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      appBar: AppBar(
        title: const GlobalText(text: 'Notifikasi', type: TextType.bold, fontSize: 18),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.sort),
                    label: const GlobalText(
                      text: 'Sort',
                      type: TextType.normal,
                      fontSize: 16,
                    ),
                    onPressed: () {
                      // Handle sort action
                      Get.bottomSheet(
                        Container(
                          color: Colors.white,
                          child: Wrap(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.arrow_upward),
                                title: const Text('Sort Ascending'),
                                onTap: () {
                                  // Add sorting logic here
                                  Get.back();
                                },
                              ),
                              ListTile(
                                leading: const Icon(Icons.arrow_downward),
                                title: const Text('Sort Descending'),
                                onTap: () {
                                  // Add sorting logic here
                                  Get.back();
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 10.w), // Add space between buttons
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.filter_list),
                    label: const GlobalText(
                      text: 'Filter',
                      type: TextType.normal,
                      fontSize: 16,
                    ),
                    onPressed: () {
                      // Handle filter action
                      Get.bottomSheet(
                        Container(
                          color: Colors.white,
                          child: Wrap(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.filter_alt),
                                title: const Text('Filter High Priority'),
                                onTap: () {
                                  // Add filtering logic here
                                  Get.back();
                                },
                              ),
                              ListTile(
                                leading: const Icon(Icons.filter_alt),
                                title: const Text('Filter Low Priority'),
                                onTap: () {
                                  // Add filtering logic here
                                  Get.back();
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0.w),
              children: const [
                NotificationItem(
                  title: 'Butuh Penanganan Segera',
                  subtitle: 'Ketinggian air mencapai 110cm\nKemungkinan hujan 90%',
                  time: '18.30',
                  iconColor: Colors.red,
                ),
                Divider(),
                NotificationItem(
                  title: 'Terdapat Potensi Banjir',
                  subtitle: 'Ketinggian air mencapai 90cm\nKemungkinan hujan 87%',
                  time: '16.00',
                  iconColor: Colors.yellow,
                ),
                Divider(),
                NotificationItem(
                  title: 'Terdapat Potensi Banjir',
                  subtitle: 'Ketinggian air mencapai 90cm\nKemungkinan hujan 70%',
                  time: '15.00',
                  iconColor: Colors.yellow,
                ),
                Divider(),
                NotificationItem(
                  title: 'Terdapat Potensi Banjir',
                  subtitle: 'Ketinggian air mencapai 90cm\nKemungkinan hujan 73%',
                  time: 'Kemarin',
                  iconColor: Colors.yellow,
                ),
                Divider(),
                NotificationItem(
                  title: 'Terdapat Potensi Banjir',
                  subtitle: 'Ketinggian air mencapai 80cm\nKemungkinan hujan 75%',
                  time: 'Kemarin',
                  iconColor: Colors.yellow,
                ),
                Divider(),
                NotificationItem(
                  title: 'Terdapat Potensi Banjir',
                  subtitle: 'Ketinggian air mencapai 78cm\nKemungkinan hujan 75%',
                  time: '03/04/2024',
                  iconColor: Colors.yellow,
                ),
                Divider(),
                NotificationItem(
                  title: 'Terdapat Potensi Banjir',
                  subtitle: 'Ketinggian air mencapai 83cm\nKemungkinan hujan 70%',
                  time: '03/04/2024',
                  iconColor: Colors.yellow,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
