import 'package:flutter/material.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gerald_app/core/global_components/global_text.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/laporlistitem_builder.dart';


class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> with SingleTickerProviderStateMixin {
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
            title: GlobalText(text: 'Laporan', type: TextType.bold, fontSize: 18.sp),
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
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0, color: Colors.black),
                insets: EdgeInsets.symmetric(horizontal: 16.0.w),
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[400],
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
