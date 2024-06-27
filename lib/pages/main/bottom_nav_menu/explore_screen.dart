import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gerald_app/core/constants/text.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/global_text.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/base_button.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/home_card.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/home_chart.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/builders/home_forecastitem.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 30.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const GlobalText(text: "Hai, Lucas", type: TextType.bold, fontSize: 20.0),
                    const GlobalText(text: ExploreScreenText.task, type: TextType.desc, fontSize: 14.0),
                    BaseButton(
                      text: 'Rumah Pompa Mulyosari (Ring road ITS)',
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 129,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const HomeCard(
                      title: 'Pompa',
                      icon: Icons.water,
                      number: '1',
                      symbols: 'unit',
                      description: 'Tes deskripsi',
                    );
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 20),
              WaterLevelChart(
                spots: const [
                  FlSpot(0, 10),
                  FlSpot(1, 20),
                  FlSpot(2, 30),
                  FlSpot(3, 40),
                  FlSpot(4, 60),
                  FlSpot(5, 80),
                  FlSpot(6, 100),
                ],
              ),
              SizedBox(height: 20),
              HourlyForecast(
                forecasts: [
                  WeatherForecast(time: '8 PM', temp: '19°', isNow: false),
                  WeatherForecast(time: 'Now', temp: '19°', isNow: true),
                  WeatherForecast(time: '10 PM', temp: '18°', isNow: false),
                  WeatherForecast(time: '11 PM', temp: '19°', isNow: false),
                  WeatherForecast(time: '12 PM', temp: '20°', isNow: false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}