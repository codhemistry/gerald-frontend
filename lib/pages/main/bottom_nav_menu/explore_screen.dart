import 'package:flutter/material.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseWidgetContainer(
      body: Center(
        child: Text('Explore Screen'),
      ),
    );
  }
}