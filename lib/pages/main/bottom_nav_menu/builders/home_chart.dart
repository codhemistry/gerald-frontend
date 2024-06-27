import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:gerald_app/core/global_components/global_text.dart';

class WaterLevelChart extends StatelessWidget {
  final List<FlSpot> spots;

  const WaterLevelChart({required this.spots});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4.0,
            spreadRadius: 2.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GlobalText(
            text: 'Histori Ketinggian Air',
            type: TextType.bold,
            fontSize: 18,
          ),
          AspectRatio(
            aspectRatio: 2,
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: true),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return GlobalText(
                          text: '${value.toInt()}',
                          fontSize: 10,
                        );
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 0:
                            return const GlobalText(text: 'Nov 23', fontSize: 10);
                          case 1:
                            return const GlobalText(text: '3PM', fontSize: 10);
                          case 2:
                            return const GlobalText(text: '4PM', fontSize: 10);
                          case 3:
                            return const GlobalText(text: '5PM', fontSize: 10);
                          case 4:
                            return const GlobalText(text: '6PM', fontSize: 10);
                          case 5:
                            return const GlobalText(text: '7PM', fontSize: 10);
                          case 6:
                            return const GlobalText(text: '8PM', fontSize: 10);
                          case 7:
                            return const GlobalText(text: '9PM', fontSize: 10);
                          default:
                            return const GlobalText(text: '', fontSize: 10);
                        }
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: true),
                lineBarsData: [
                  LineChartBarData(
                    spots: spots,
                    isCurved: true,
                    color: Colors.blue,
                    barWidth: 1,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: true),
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
