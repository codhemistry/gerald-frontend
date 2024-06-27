import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/notificationitem_builder.dart';

class NotifiesScreen extends StatelessWidget {
  const NotifiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      body: Column(
        children: [
          AppBar(
            title: const Text('Notifikasi'),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.sort),
                onPressed: () {
                  // Handle sort action
                },
              ),
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: () {
                  // Handle filter action
                },
              ),
            ],
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