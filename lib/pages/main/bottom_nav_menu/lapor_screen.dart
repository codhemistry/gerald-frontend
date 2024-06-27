import 'package:flutter/material.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/laporlistitem_builder.dart';


class LaporScreen extends StatefulWidget {
  const LaporScreen({super.key});

  @override
  _LaporScreenState createState() => _LaporScreenState();
}

class _LaporScreenState extends State<LaporScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      body: Column(
        children: [
          AppBar(
            title: const Text('Lapor'),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Handle search action
                },
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.blue,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(text: 'To do'),
                Tab(text: 'In progress'),
                Tab(text: 'Finished'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                PlaceholderContent(),
                PlaceholderContent(),
                PlaceholderContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
