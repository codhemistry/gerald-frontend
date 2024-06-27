import 'package:flutter/material.dart';

class WeatherForecast {
  final String time;
  final String temp;
  final bool isNow;

  WeatherForecast({required this.time, required this.temp, required this.isNow});
}

class HourlyForecast extends StatelessWidget {
  final List<WeatherForecast> forecasts;

  const HourlyForecast({required this.forecasts});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      padding: const EdgeInsets.all(8.0),
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hourly Weather",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Weekly Weather",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: forecasts.map((forecast) => WeatherCard(forecast: forecast)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  final WeatherForecast forecast;

  const WeatherCard({required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: forecast.isNow ? Colors.blue : Colors.lightBlueAccent.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Text(
            forecast.time,
            style: TextStyle(
              color: forecast.isNow ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Icon(
            Icons.cloud,
            color: forecast.isNow ? Colors.white : Colors.blue,
            size: 40.0,
          ),
          const SizedBox(height: 8.0),
          Text(
            forecast.temp,
            style: TextStyle(
              color: forecast.isNow ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
